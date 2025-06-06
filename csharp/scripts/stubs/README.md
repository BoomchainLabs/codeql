# Generate stubs for a single NuGet package

Stubs can be generated from NuGet packages with the `make_stubs_nuget.py` script.

The following calls generate stubs for `Newtonsoft.Json`:

```
python3 make_stubs_nuget.py classlib Newtonsoft.Json
python3 make_stubs_nuget.py classlib Newtonsoft.Json latest
python3 make_stubs_nuget.py classlib Newtonsoft.Json 13.0.1
python3 make_stubs_nuget.py classlib Newtonsoft.Json 13.0.1 /Users/tmp/working-dir
```

The output stubs are found in the `[DIR]/output/stubs` folder and can be copied over to `csharp/ql/test/resources/stubs`.

In some more involved cases the output files need to be edited. For example `ServiceStack` has NuGet dependencies, which
are included in the `Microsoft.NETCore.App` framework stub. These dependencies generate empty packages, which can be
removed. The `ProjectReference` entries referencing these removed empty packages also need to be deleted from the
`.csproj` files.

# Generate stubs for all packages needed for tests.

Stubs needed for all C# Code QL tests can be generated by
```
python3 make_stubs_all.py
python3 make_stubs_all.py /Users/tmp/working-dir
```
The script contains a hardcoded list of `packages`. If a new package is needed for test purposes, it should be added to the `packages` list in the script.

The generated stubs require some manual changes before they are compilable.

The output stubs are found in the `[DIR]/output/stubs` folder and can be copied over to `csharp/ql/test/resources/stubs`.
