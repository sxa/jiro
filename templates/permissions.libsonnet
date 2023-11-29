{
  group(unixGroupName, projectGroupPermissionsList): [{
    group: {
      name: unixGroupName,
      permissions: projectGroupPermissionsList
    }
  }]
}

{
  user(unixUserName, projectUserPermissionsList): [{
    user: {
      name: unixUserName,
      permissions: projectUserPermissionsList
    }
  }]
}

{
  projectPermissions(unixGroupName, projectGroupPermissionsList): [
    {
      user: {
        name: "anonymous",
        permissions: [
          "Overall/Read",
          "Job/Read"
        ]
      }
    },
    {
      group: {
        name: "common",
        permissions: [
          "Job/ExtendedRead"
        ]
      }
    },
    {
      group: {
        name: "admins",
        permissions: [
          "Overall/Administer"
        ]
      }
    },
    {
      group: {
        name: unixGroupName,
        permissions: projectGroupPermissionsList,
      }
    },
  ],

  committerPermissionsList::
  [
    "Agent/Build",
    "Credentials/View",
    "Job/Build",
    "Job/Cancel",
    "Job/Configure",
    "Job/Create",
    "Job/Delete",
    "Job/Move",
    "Job/Read",
    "Job/Workspace",
    "Overall/Read",
    "Run/Delete",
    "Run/Replay",
    "Run/Update",
    "SCM/Tag",
    "View/Configure",
    "View/Create",
    "View/Delete",
    "View/Read",
  ],
}