.class public abstract LI6/i;
.super LI6/h;
.source "SourceFile"


# direct methods
.method public static B0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Ld2/v;->f(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x30

    .line 20
    .line 21
    invoke-static {v4, v5}, Lz4/q0;->l(II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const v6, -0x7fffffff

    .line 26
    .line 27
    .line 28
    if-gez v5, :cond_4

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v1, v5, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const/16 v7, 0x2b

    .line 35
    .line 36
    if-eq v4, v7, :cond_3

    .line 37
    .line 38
    const/16 v6, 0x2d

    .line 39
    .line 40
    if-eq v4, v6, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const/high16 v6, -0x80000000

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v4, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    const v7, -0x38e38e3

    .line 52
    .line 53
    .line 54
    const v8, -0x38e38e3

    .line 55
    .line 56
    .line 57
    :goto_1
    if-ge v5, v1, :cond_8

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-gez v9, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    if-ge v3, v8, :cond_6

    .line 71
    .line 72
    if-ne v8, v7, :cond_a

    .line 73
    .line 74
    div-int/lit8 v8, v6, 0xa

    .line 75
    .line 76
    if-ge v3, v8, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    .line 80
    .line 81
    add-int v10, v6, v9

    .line 82
    .line 83
    if-ge v3, v10, :cond_7

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_7
    sub-int/2addr v3, v9

    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_8
    if-eqz v4, :cond_9

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_2
    move-object v2, p0

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    neg-int p0, v3

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_a
    :goto_3
    return-object v2
.end method
