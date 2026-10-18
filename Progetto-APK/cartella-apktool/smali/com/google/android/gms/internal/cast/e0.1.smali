.class public final Lcom/google/android/gms/internal/cast/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/v;
.implements Lcom/google/android/gms/internal/cast/l2;


# static fields
.field public static final a:Lcom/google/android/gms/internal/cast/e0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/e0;->a:Lcom/google/android/gms/internal/cast/e0;

    .line 7
    .line 8
    return-void
.end method

.method public static a([BI)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    .line 5
    aget-byte v2, p0, v1

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-lt v1, p1, :cond_1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    :goto_1
    if-lt v1, p1, :cond_2

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    aget-byte v3, p0, v1

    .line 21
    .line 22
    if-gez v3, :cond_b

    .line 23
    .line 24
    const/16 v4, -0x20

    .line 25
    .line 26
    const/16 v5, -0x41

    .line 27
    .line 28
    if-ge v3, v4, :cond_3

    .line 29
    .line 30
    if-ge v2, p1, :cond_8

    .line 31
    .line 32
    const/16 v4, -0x3e

    .line 33
    .line 34
    if-lt v3, v4, :cond_a

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    aget-byte v2, p0, v2

    .line 39
    .line 40
    if-le v2, v5, :cond_1

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_3
    const/16 v6, -0x10

    .line 44
    .line 45
    if-ge v3, v6, :cond_7

    .line 46
    .line 47
    add-int/lit8 v6, p1, -0x1

    .line 48
    .line 49
    if-lt v2, v6, :cond_4

    .line 50
    .line 51
    invoke-static {p0, v2, p1}, Lcom/google/android/gms/internal/cast/Y2;->a([BII)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    add-int/lit8 v6, v1, 0x2

    .line 57
    .line 58
    aget-byte v2, p0, v2

    .line 59
    .line 60
    if-gt v2, v5, :cond_a

    .line 61
    .line 62
    const/16 v7, -0x60

    .line 63
    .line 64
    if-ne v3, v4, :cond_5

    .line 65
    .line 66
    if-lt v2, v7, :cond_a

    .line 67
    .line 68
    :cond_5
    const/16 v4, -0x13

    .line 69
    .line 70
    if-ne v3, v4, :cond_6

    .line 71
    .line 72
    if-ge v2, v7, :cond_a

    .line 73
    .line 74
    :cond_6
    add-int/lit8 v1, v1, 0x3

    .line 75
    .line 76
    aget-byte v2, p0, v6

    .line 77
    .line 78
    if-le v2, v5, :cond_1

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_7
    add-int/lit8 v4, p1, -0x2

    .line 82
    .line 83
    if-lt v2, v4, :cond_9

    .line 84
    .line 85
    invoke-static {p0, v2, p1}, Lcom/google/android/gms/internal/cast/Y2;->a([BII)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :cond_8
    :goto_2
    if-nez v3, :cond_a

    .line 90
    .line 91
    :goto_3
    const/4 v0, 0x1

    .line 92
    goto :goto_4

    .line 93
    :cond_9
    add-int/lit8 v4, v1, 0x2

    .line 94
    .line 95
    aget-byte v2, p0, v2

    .line 96
    .line 97
    if-gt v2, v5, :cond_a

    .line 98
    .line 99
    shl-int/lit8 v3, v3, 0x1c

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x70

    .line 102
    .line 103
    add-int/2addr v2, v3

    .line 104
    shr-int/lit8 v2, v2, 0x1e

    .line 105
    .line 106
    if-nez v2, :cond_a

    .line 107
    .line 108
    add-int/lit8 v2, v1, 0x3

    .line 109
    .line 110
    aget-byte v3, p0, v4

    .line 111
    .line 112
    if-gt v3, v5, :cond_a

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x4

    .line 115
    .line 116
    aget-byte v2, p0, v2

    .line 117
    .line 118
    if-le v2, v5, :cond_1

    .line 119
    .line 120
    :cond_a
    :goto_4
    return v0

    .line 121
    :cond_b
    move v1, v2

    .line 122
    goto :goto_1
.end method


# virtual methods
.method public zza()V
    .locals 0

    .line 1
    return-void
.end method
