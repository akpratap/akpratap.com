---
title: "C# 8.0 - Switch Expressions"
tags: [csharp,dotnet]
description: "Switch 'expressions' are a more concise version of a switch 'statement' that was released in C# 8.0.  Let's take a look!"
---

In C# 8.0, a new form of "switch" was introduced.  While similar, you'll find that this new "switch expression" is more concise than it's "switch statement" counterpart as it does not require all the various keywords (`case`, `break`, `default`, etc.).

For example, consider the following enum that lists the colors of the rainbow:

```csharp
public enum Rainbow
{
    Red,
    Orange,
    Yellow,
    Green,
    Blue,
    Indigo,
    Violet
}
```

And if you want to convert a Rainbow value to its RGB values, this is how you would a "switch expression":

```csharp
public static RGBColor FromRainbow(Rainbow colorBand) =>
    colorBand switch
    {
        Rainbow.Red    => new RGBColor(0xFF, 0x00, 0x00),
        Rainbow.Orange => new RGBColor(0xFF, 0x7F, 0x00),
        Rainbow.Yellow => new RGBColor(0xFF, 0xFF, 0x00),
        Rainbow.Green  => new RGBColor(0x00, 0xFF, 0x00),
        Rainbow.Blue   => new RGBColor(0x00, 0x00, 0xFF),
        Rainbow.Indigo => new RGBColor(0x4B, 0x00, 0x82),
        Rainbow.Violet => new RGBColor(0x94, 0x00, 0xD3),
        _              => throw new ArgumentException(...),
    };
```

Contrast that with the equivalent code using the classic "switch statement":

```csharp
public static RGBColor FromRainbowClassic(Rainbow colorBand)
{
    switch (colorBand)
    {
        case Rainbow.Red:
            return new RGBColor(0xFF, 0x00, 0x00);
        case Rainbow.Orange:
            return new RGBColor(0xFF, 0x7F, 0x00);
        case Rainbow.Yellow:
            return new RGBColor(0xFF, 0xFF, 0x00);
        case Rainbow.Green:
            return new RGBColor(0x00, 0xFF, 0x00);
        case Rainbow.Blue:
            return new RGBColor(0x00, 0x00, 0xFF);
        case Rainbow.Indigo:
            return new RGBColor(0x4B, 0x00, 0x82);
        case Rainbow.Violet:
            return new RGBColor(0x94, 0x00, 0xD3);
        default:
            throw new ArgumentException(...);
    };
}
```

New switch expression has several syntax improvements:

1. The variable comes BEFORE the `switch` keyword.  This is a sure sign you're looking at an expression, instead of the statement.
2. The `case` and `:` are gone, in favor of `=>`, which is more intuitive.
3. The discard variable, `_`, replaces the `default` case we're used to seeing.
4. Finally, the bodies are expressions themselves, instead of statements.

Let me know what you think about this new way of writing switch ~~stateme~~...expressions in the comments!