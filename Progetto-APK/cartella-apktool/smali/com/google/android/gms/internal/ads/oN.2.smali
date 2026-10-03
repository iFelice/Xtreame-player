.class public final Lcom/google/android/gms/internal/ads/oN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kC;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/kC;

.field public final b:I

.field public final c:Lcom/google/android/gms/internal/ads/GN;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/RI;ILcom/google/android/gms/internal/ads/GN;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lo3/r;->J(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oN;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/ads/oN;->b:I

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oN;->c:Lcom/google/android/gms/internal/ads/GN;

    .line 18
    .line 19
    new-array p1, v0, [B

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oN;->d:[B

    .line 22
    .line 23
    iput p2, p0, Lcom/google/android/gms/internal/ads/oN;->e:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final e([BII)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/oN;->e:I

    .line 3
    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oN;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-nez v1, :cond_7

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oN;->d:[B

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-ne v6, v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    aget-byte v1, v1, v4

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_5

    .line 29
    :cond_1
    new-array v6, v1, [B

    .line 30
    .line 31
    move v7, v1

    .line 32
    :goto_0
    if-lez v7, :cond_3

    .line 33
    .line 34
    invoke-interface {v2, v6, v4, v7}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eq v8, v3, :cond_2

    .line 39
    .line 40
    add-int/2addr v4, v8

    .line 41
    sub-int/2addr v7, v8

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return v3

    .line 44
    :cond_3
    :goto_2
    if-lez v1, :cond_4

    .line 45
    .line 46
    add-int/lit8 v4, v1, -0x1

    .line 47
    .line 48
    aget-byte v7, v6, v4

    .line 49
    .line 50
    if-nez v7, :cond_4

    .line 51
    .line 52
    move v1, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    if-lez v1, :cond_6

    .line 55
    .line 56
    new-instance v4, Lcom/google/android/gms/internal/ads/jr;

    .line 57
    .line 58
    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([BI)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oN;->c:Lcom/google/android/gms/internal/ads/GN;

    .line 62
    .line 63
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/GN;->l:Z

    .line 64
    .line 65
    if-nez v6, :cond_5

    .line 66
    .line 67
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 68
    .line 69
    :goto_3
    move-wide v9, v6

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/KN;->n(Z)J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 78
    .line 79
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    goto :goto_3

    .line 84
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/GN;->k:Lcom/google/android/gms/internal/ads/e0;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-interface {v8, v12, v4}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 94
    .line 95
    .line 96
    const/4 v11, 0x1

    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v14, 0x0

    .line 99
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/GN;->l:Z

    .line 103
    .line 104
    :cond_6
    :goto_5
    iget v1, v0, Lcom/google/android/gms/internal/ads/oN;->b:I

    .line 105
    .line 106
    iput v1, v0, Lcom/google/android/gms/internal/ads/oN;->e:I

    .line 107
    .line 108
    :cond_7
    move/from16 v4, p3

    .line 109
    .line 110
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    move-object/from16 v4, p1

    .line 115
    .line 116
    move/from16 v5, p2

    .line 117
    .line 118
    invoke-interface {v2, v4, v5, v1}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eq v1, v3, :cond_8

    .line 123
    .line 124
    iget v2, v0, Lcom/google/android/gms/internal/ads/oN;->e:I

    .line 125
    .line 126
    sub-int/2addr v2, v1

    .line 127
    iput v2, v0, Lcom/google/android/gms/internal/ads/oN;->e:I

    .line 128
    .line 129
    :cond_8
    return v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oN;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kC;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oN;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kC;->zzc()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oN;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kC;->zze()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
