.class public abstract Lq4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sput-object v1, Lq4/a;->a:[I

    .line 9
    .line 10
    const v1, 0x10100a1

    .line 11
    .line 12
    .line 13
    filled-new-array {v1, v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lq4/a;->b:[I

    .line 18
    .line 19
    filled-new-array {v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lq4/a;->c:[I

    .line 24
    .line 25
    return-void
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [[I

    .line 3
    .line 4
    new-array v2, v0, [I

    .line 5
    .line 6
    sget-object v3, Lq4/a;->c:[I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v1, v4

    .line 10
    .line 11
    sget-object v3, Lq4/a;->b:[I

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {p0, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    mul-int/lit8 v5, v5, 0x2

    .line 30
    .line 31
    const/16 v6, 0xff

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    sget-object v7, LG/a;->a:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    const-string v7, "alpha must be between 0 and 255."

    .line 40
    .line 41
    if-ltz v5, :cond_3

    .line 42
    .line 43
    if-gt v5, v6, :cond_3

    .line 44
    .line 45
    const v8, 0xffffff

    .line 46
    .line 47
    .line 48
    and-int/2addr v3, v8

    .line 49
    shl-int/lit8 v5, v5, 0x18

    .line 50
    .line 51
    or-int/2addr v3, v5

    .line 52
    aput v3, v2, v4

    .line 53
    .line 54
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    aput-object v3, v1, v5

    .line 58
    .line 59
    sget-object v3, Lq4/a;->a:[I

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :cond_1
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    mul-int/lit8 p0, p0, 0x2

    .line 76
    .line 77
    invoke-static {p0, v6}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-ltz p0, :cond_2

    .line 82
    .line 83
    if-gt p0, v6, :cond_2

    .line 84
    .line 85
    and-int v0, v4, v8

    .line 86
    .line 87
    shl-int/lit8 p0, p0, 0x18

    .line 88
    .line 89
    or-int/2addr p0, v0

    .line 90
    aput p0, v2, v5

    .line 91
    .line 92
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    invoke-direct {p0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method
