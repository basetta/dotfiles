require 'rake'

@skip_all = false
@overwrite_all = false
@backup_all = false  


def createSymlink( linkables, originFunc, targetFunc )
  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = originFunc.call( linkable )
 
    target = targetFunc.call( linkable, file )

    unless File::directory?( linkable )
      if File.exists?(target) || File.symlink?(target)
        unless @skip_all || @overwrite_all || @backup_all
          puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
          case STDIN.gets.chomp
          when 'o' then overwrite = true
          when 'b' then backup = true
          when 'O' then @overwrite_all = true
          when 'B' then @backup_all = true
          when 'S' then @skip_all = true
          end
        end
        FileUtils.rm_rf(target) if overwrite || @overwrite_all
        `mv "#{target}" "#{target}.backup"` if backup || @backup_all
      end
      `ln -s "$PWD/#{linkable}" "#{target}"`
    end
  end
end


desc "Hook our dotfiles into system-standard positions."
task :install do
  linkables = Dir.glob('*/**{.symlink}')

  @skip_all = false
  @overwrite_all = false
  @backup_all = false 

  linkables.each do |linkable|

    #generate filename
    fileFunc = Proc.new do | linkable | 
      
      linkable.split('/').last.split('.').first 
    end

    #generate target name
    targetFunc = Proc.new do | linkable, file |
      "#{ENV["HOME"]}/.#{file}"  
    end

    createSymlink( linkables, fileFunc, targetFunc )

  end
end

desc "Hook our configuration files"
task :configuration do

  installables = Dir.glob('*/dest.nfo')

  @skip_all = false
  @overwrite_all = false
  @backup_all = false 

  installables.each do |installable|
  
    destDir = IO.readlines(installable).first.strip

    filename = File.basename( installable )

    basedir = installable.split( filename ).first
 
    linkables = Dir.glob( basedir + '**/*')

    linkables.delete( basedir + 'dest.nfo' )
    
    #generate filename
    fileFunc = Proc.new do | linkable | 
      linkable.split( basedir ).last 
    end

    #generate target name
    targetFunc = Proc.new do | linkable, file |
      File.join(destDir, file)  
    end

    createSymlink( linkables, fileFunc, targetFunc )
 
  end


end  

task :default => 'install'
