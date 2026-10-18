.class public final Lcom/google/ads/interactivemedia/v3/internal/zzxo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "java.version"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    :try_start_0
    const-string v3, "[._]"

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    aget-object v4, v3, v1

    .line 17
    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    array-length v4, v3

    .line 26
    if-le v4, v5, :cond_0

    .line 27
    .line 28
    aget-object v3, v3, v5

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    nop

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    const/4 v4, -0x1

    .line 40
    :cond_1
    :goto_1
    if-ne v4, v2, :cond_3

    .line 41
    .line 42
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v1, v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_1
    nop

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    goto :goto_4

    .line 80
    :goto_3
    const/4 v4, -0x1

    .line 81
    :cond_3
    :goto_4
    if-ne v4, v2, :cond_4

    .line 82
    .line 83
    const/4 v4, 0x6

    .line 84
    :cond_4
    sput v4, Lcom/google/ads/interactivemedia/v3/internal/zzxo;->zza:I

    .line 85
    .line 86
    return-void
.end method

.method public static zza()Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzxo;->zza:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
