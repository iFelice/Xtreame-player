.class public abstract LH5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0xae3

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [[F

    .line 16
    .line 17
    sput-object v2, LH5/e;->a:[[F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v0, :cond_2

    .line 22
    .line 23
    sget-object v4, LG5/a;->b:[I

    .line 24
    .line 25
    aget v4, v4, v3

    .line 26
    .line 27
    and-int/lit8 v5, v4, 0x1

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_1
    if-ge v6, v1, :cond_1

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_2
    and-int/lit8 v8, v4, 0x1

    .line 34
    .line 35
    if-ne v8, v5, :cond_0

    .line 36
    .line 37
    const/high16 v8, 0x3f800000    # 1.0f

    .line 38
    .line 39
    add-float/2addr v7, v8

    .line 40
    shr-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    sget-object v5, LH5/e;->a:[[F

    .line 44
    .line 45
    aget-object v5, v5, v3

    .line 46
    .line 47
    rsub-int/lit8 v9, v6, 0x7

    .line 48
    .line 49
    const/high16 v10, 0x41880000    # 17.0f

    .line 50
    .line 51
    div-float/2addr v7, v10

    .line 52
    aput v7, v5, v9

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    move v5, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method
