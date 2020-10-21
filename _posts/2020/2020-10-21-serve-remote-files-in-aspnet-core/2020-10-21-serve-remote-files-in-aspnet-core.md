---
title: "Serve remote files in ASP.NET Core"
date: "2020-10-21T21:58:52+13:00"
tags: [dotnet,csharp]
description: "Serve remote files in ASP.NET Core"
---

## Problem

We wanted to build a feature in an ASP.Net Core application using which we could serve remote files (stored in database/blob storage) to clients via simple URLs.

_Example._

>https://your-application.com/library/folder

>https://your-application.com/library/folder/file-name.pdf

ASP.NET Core abstracts file system access through the use of File Providers, and it uses Static File Middleware to locate static files. Static files, such as HTML, CSS, images, and JavaScript, are assets in an ASP.NET Core app and can be served directly to clients.

## Solution

Build a custom IFileProvider for ASP.NET Core which can allow remotely located files (database/Azure Blob/AWS S3) to be treated as if they were an integral part of the application, and allow them to be part of the static file functionality.

References:
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/file-providers
 
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/static-files?view=aspnetcore-3.1

---

>This post, "Serve remote files in ASP.NET Core", first appeared on [https://www.akpratap.com/serve-remote-files-in-aspnet-core](https://www.akpratap.com/serve-remote-files-in-aspnet-core)