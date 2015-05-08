-- Entry point when run

on run
	display dialog "Enter purchase order description:" default answer "Purchase"
	createOmniFocusTask(the result's text returned)
end run

-- Create tasks in Omnifocus

on createOmniFocusTask(eventName)
	tell application "OmniFocus"
		tell default document
			-- Grab the context
			set purchaseContext to first context whose name is "Energy"
			tell purchaseContext
				set purchaseContext to first context whose name is "Easy"
			end tell
			
			-- Create the task inside a project
			set fld to first folder whose name is "Emarsys"
			tell fld
				set proj to first project whose name is "[Emarsys]"
				tell proj
					-- Create parent task and its subtasks.
					set parentTask to make new task with properties {name:eventName, sequential:true, context:purchaseContext}
					tell parentTask
						make new task with properties {name:"Print Formular for " & eventName, context:purchaseContext}
						make new task with properties {name:"Get the Sign for " & eventName, context:purchaseContext}
						make new task with properties {name:"Order for " & eventName, context:purchaseContext}
					end tell
				end tell
			end tell
		end tell
	end tell
end createOmniFocusTask