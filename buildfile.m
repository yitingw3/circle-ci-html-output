function plan = buildfile
% Create a plan with tasks for all local functions with names that end with the word "task".
plan = buildplan(localfunctions);
 
% Declare that the "package" task depends on the "test" task.
plan("test").Dependencies = "build";
 
% Set the "package" task as the task to run when buildtool is called with no input arguments.
plan.DefaultTasks = "build";
 
function testTask(~)
% Run all tests in the project
disp("running all tests");
 
function buildTask(~)
% Build project
disp("building the project");
