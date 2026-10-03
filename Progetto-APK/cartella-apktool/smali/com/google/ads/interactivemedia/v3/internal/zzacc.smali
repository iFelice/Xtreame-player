.class public Lcom/google/ads/interactivemedia/v3/internal/zzacc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field zza:I

.field private final zzb:Ljava/io/Reader;

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

.field private final zzd:[C

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:Ljava/lang/String;

.field private zzl:[I

.field private zzm:I

.field private zzn:[Ljava/lang/String;

.field private zzo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacb;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacb;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzxp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxp;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 7
    .line 8
    const/16 v0, 0x400

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 18
    .line 19
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    new-array v2, v1, [I

    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    aput v3, v2, v0

    .line 36
    .line 37
    new-array v0, v1, [Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 40
    .line 41
    new-array v0, v1, [I

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 44
    .line 45
    const-string v0, "in == null"

    .line 46
    .line 47
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzb:Ljava/io/Reader;

    .line 51
    .line 52
    return-void
.end method

.method private zzA(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 14
    .line 15
    aget v3, v3, v1

    .line 16
    .line 17
    packed-switch v3, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    const-string v0, "Unknown scope value: "

    .line 23
    .line 24
    invoke-static {v0, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_0
    const/16 v2, 0x2e

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object v2, v2, v1

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :pswitch_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 48
    .line 49
    aget v3, v3, v1

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    if-lez v3, :cond_0

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    if-ne v1, v2, :cond_0

    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    :cond_0
    const/16 v2, 0x5b

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x5d

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final zzB(C)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 3
    .line 4
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 5
    .line 6
    move v3, v2

    .line 7
    move v2, v1

    .line 8
    :goto_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 9
    .line 10
    const/16 v5, 0x10

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v1, v3, :cond_7

    .line 14
    .line 15
    add-int/lit8 v7, v1, 0x1

    .line 16
    .line 17
    aget-char v1, v4, v1

    .line 18
    .line 19
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 20
    .line 21
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 22
    .line 23
    if-ne v8, v9, :cond_1

    .line 24
    .line 25
    const/16 v8, 0x20

    .line 26
    .line 27
    if-lt v1, v8, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string p1, "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_2
    if-ne v1, p1, :cond_3

    .line 38
    .line 39
    sub-int p1, v7, v2

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v0, v4, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    invoke-virtual {v0, v4, v2, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    const/16 v8, 0x5c

    .line 62
    .line 63
    if-ne v1, v8, :cond_5

    .line 64
    .line 65
    sub-int v1, v7, v2

    .line 66
    .line 67
    add-int/lit8 v3, v1, -0x1

    .line 68
    .line 69
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    add-int/2addr v1, v1

    .line 76
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd()C

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 94
    .line 95
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 96
    .line 97
    move v1, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const/16 v4, 0xa

    .line 100
    .line 101
    if-ne v1, v4, :cond_6

    .line 102
    .line 103
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 104
    .line 105
    add-int/2addr v1, v6

    .line 106
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 107
    .line 108
    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 109
    .line 110
    :cond_6
    move v1, v7

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    sub-int v3, v1, v2

    .line 113
    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    add-int v0, v3, v3

    .line 117
    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .line 126
    .line 127
    move-object v0, v7

    .line 128
    :cond_8
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 132
    .line 133
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_9
    const-string p1, "Unterminated string"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    throw p1
.end method

.method private final zzC()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 5
    .line 6
    add-int/2addr v3, v2

    .line 7
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 8
    .line 9
    if-ge v3, v4, :cond_2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 12
    .line 13
    aget-char v3, v4, v3

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_3

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    const/16 v4, 0xc

    .line 24
    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    const/16 v4, 0x23

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x2c

    .line 40
    .line 41
    if-eq v3, v4, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x2f

    .line 44
    .line 45
    if-eq v3, v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x3d

    .line 48
    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    const/16 v4, 0x7b

    .line 52
    .line 53
    if-eq v3, v4, :cond_3

    .line 54
    .line 55
    const/16 v4, 0x7d

    .line 56
    .line 57
    if-eq v3, v4, :cond_3

    .line 58
    .line 59
    const/16 v4, 0x3a

    .line 60
    .line 61
    if-eq v3, v4, :cond_3

    .line 62
    .line 63
    const/16 v4, 0x3b

    .line 64
    .line 65
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    packed-switch v3, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/16 v3, 0x400

    .line 78
    .line 79
    if-ge v2, v3, :cond_4

    .line 80
    .line 81
    add-int/lit8 v3, v2, 0x1

    .line 82
    .line 83
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    if-nez v1, :cond_5

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const/16 v3, 0x10

    .line 97
    .line 98
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 106
    .line 107
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 108
    .line 109
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 113
    .line 114
    add-int/2addr v3, v2

    .line 115
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_0

    .line 123
    .line 124
    :goto_2
    if-nez v1, :cond_6

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 127
    .line 128
    new-instance v2, Ljava/lang/String;

    .line 129
    .line 130
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 131
    .line 132
    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 137
    .line 138
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :goto_3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 148
    .line 149
    add-int/2addr v1, v0

    .line 150
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 151
    .line 152
    return-object v2

    .line 153
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    throw v0
.end method

.method private final zzE(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    const/16 v2, 0x500

    .line 6
    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    add-int/2addr v0, v0

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 40
    .line 41
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x1

    .line 44
    .line 45
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 46
    .line 47
    aput p1, v0, v1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "Nesting limit 1280 reached"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacf;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method private final zzF(C)V
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 4
    .line 5
    :goto_1
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 9
    .line 10
    add-int/lit8 v4, v0, 0x1

    .line 11
    .line 12
    aget-char v0, v3, v0

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v3, 0x5c

    .line 20
    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd()C

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 29
    .line 30
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v3, 0xa

    .line 34
    .line 35
    if-ne v0, v3, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 41
    .line 42
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 43
    .line 44
    :cond_2
    move v0, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 47
    .line 48
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string p1, "Unterminated string"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    throw p1
.end method

.method private final zzG()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 32
    .line 33
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method private final zzH()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x0

    .line 3
    :goto_1
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 4
    .line 5
    add-int/2addr v2, v1

    .line 6
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 7
    .line 8
    if-ge v2, v3, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 11
    .line 12
    aget-char v2, v3, v2

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    const/16 v3, 0xc

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x23

    .line 35
    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    const/16 v3, 0x2c

    .line 39
    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    const/16 v3, 0x2f

    .line 43
    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    const/16 v3, 0x3d

    .line 47
    .line 48
    if-eq v2, v3, :cond_0

    .line 49
    .line 50
    const/16 v3, 0x7b

    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    const/16 v3, 0x7d

    .line 55
    .line 56
    if-eq v2, v3, :cond_1

    .line 57
    .line 58
    const/16 v3, 0x3a

    .line 59
    .line 60
    if-eq v2, v3, :cond_1

    .line 61
    .line 62
    const/16 v3, 0x3b

    .line 63
    .line 64
    if-eq v2, v3, :cond_0

    .line 65
    .line 66
    packed-switch v2, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 73
    .line 74
    .line 75
    :cond_1
    :pswitch_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 76
    .line 77
    add-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzI(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 9
    .line 10
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v2, v1, :cond_0

    .line 14
    .line 15
    sub-int/2addr v2, v1

    .line 16
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 17
    .line 18
    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 23
    .line 24
    :goto_0
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzb:Ljava/io/Reader;

    .line 27
    .line 28
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 29
    .line 30
    rsub-int v4, v2, 0x400

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 43
    .line 44
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    aget-char v1, v0, v3

    .line 56
    .line 57
    const v5, 0xfeff

    .line 58
    .line 59
    .line 60
    if-ne v1, v5, :cond_2

    .line 61
    .line 62
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 63
    .line 64
    add-int/2addr v1, v4

    .line 65
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 66
    .line 67
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    :cond_2
    if-lt v2, p1, :cond_1

    .line 72
    .line 73
    return v4

    .line 74
    :cond_3
    return v3
.end method

.method private final zzJ(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzd()C
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 4
    .line 5
    const-string v2, "Unterminated escape sequence"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 23
    .line 24
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 25
    .line 26
    add-int/lit8 v4, v1, 0x1

    .line 27
    .line 28
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 29
    .line 30
    aget-char v0, v0, v1

    .line 31
    .line 32
    const/16 v5, 0xa

    .line 33
    .line 34
    if-eq v0, v5, :cond_e

    .line 35
    .line 36
    const/16 v3, 0x22

    .line 37
    .line 38
    if-eq v0, v3, :cond_10

    .line 39
    .line 40
    const/16 v3, 0x27

    .line 41
    .line 42
    if-eq v0, v3, :cond_f

    .line 43
    .line 44
    const/16 v3, 0x2f

    .line 45
    .line 46
    if-eq v0, v3, :cond_10

    .line 47
    .line 48
    const/16 v3, 0x5c

    .line 49
    .line 50
    if-eq v0, v3, :cond_10

    .line 51
    .line 52
    const/16 v3, 0x62

    .line 53
    .line 54
    if-eq v0, v3, :cond_d

    .line 55
    .line 56
    const/16 v3, 0x66

    .line 57
    .line 58
    if-eq v0, v3, :cond_c

    .line 59
    .line 60
    const/16 v4, 0x6e

    .line 61
    .line 62
    if-eq v0, v4, :cond_b

    .line 63
    .line 64
    const/16 v4, 0x72

    .line 65
    .line 66
    if-eq v0, v4, :cond_a

    .line 67
    .line 68
    const/16 v4, 0x74

    .line 69
    .line 70
    if-eq v0, v4, :cond_9

    .line 71
    .line 72
    const/16 v4, 0x75

    .line 73
    .line 74
    if-ne v0, v4, :cond_8

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x5

    .line 77
    .line 78
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    if-le v1, v0, :cond_3

    .line 82
    .line 83
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    throw v0

    .line 95
    :cond_3
    :goto_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 96
    .line 97
    add-int/lit8 v1, v0, 0x4

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    :goto_2
    if-ge v0, v1, :cond_7

    .line 101
    .line 102
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 103
    .line 104
    shl-int/lit8 v2, v2, 0x4

    .line 105
    .line 106
    aget-char v6, v5, v0

    .line 107
    .line 108
    const/16 v7, 0x30

    .line 109
    .line 110
    if-lt v6, v7, :cond_4

    .line 111
    .line 112
    const/16 v7, 0x39

    .line 113
    .line 114
    if-gt v6, v7, :cond_4

    .line 115
    .line 116
    add-int/lit8 v6, v6, -0x30

    .line 117
    .line 118
    :goto_3
    add-int/2addr v6, v2

    .line 119
    move v2, v6

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/16 v7, 0x61

    .line 122
    .line 123
    if-lt v6, v7, :cond_5

    .line 124
    .line 125
    if-gt v6, v3, :cond_5

    .line 126
    .line 127
    add-int/lit8 v6, v6, -0x57

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const/16 v7, 0x41

    .line 131
    .line 132
    if-lt v6, v7, :cond_6

    .line 133
    .line 134
    const/16 v7, 0x46

    .line 135
    .line 136
    if-gt v6, v7, :cond_6

    .line 137
    .line 138
    add-int/lit8 v6, v6, -0x37

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    new-instance v0, Ljava/lang/String;

    .line 145
    .line 146
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 147
    .line 148
    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 149
    .line 150
    .line 151
    const-string v1, "Malformed Unicode escape \\u"

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    throw v0

    .line 162
    :cond_7
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 163
    .line 164
    add-int/2addr v0, v4

    .line 165
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 166
    .line 167
    int-to-char v0, v2

    .line 168
    return v0

    .line 169
    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 170
    .line 171
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    throw v0

    .line 176
    :cond_9
    const/16 v0, 0x9

    .line 177
    .line 178
    return v0

    .line 179
    :cond_a
    const/16 v0, 0xd

    .line 180
    .line 181
    return v0

    .line 182
    :cond_b
    return v5

    .line 183
    :cond_c
    const/16 v0, 0xc

    .line 184
    .line 185
    return v0

    .line 186
    :cond_d
    const/16 v0, 0x8

    .line 187
    .line 188
    return v0

    .line 189
    :cond_e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 190
    .line 191
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 192
    .line 193
    if-eq v1, v2, :cond_12

    .line 194
    .line 195
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 196
    .line 197
    add-int/2addr v1, v3

    .line 198
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 199
    .line 200
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 201
    .line 202
    :cond_f
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 203
    .line 204
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 205
    .line 206
    if-eq v1, v2, :cond_11

    .line 207
    .line 208
    :cond_10
    return v0

    .line 209
    :cond_11
    const-string v0, "Invalid escaped character \"\'\" in strict mode"

    .line 210
    .line 211
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    throw v0

    .line 216
    :cond_12
    const-string v0, "Cannot escape a newline character in strict mode"

    .line 217
    .line 218
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    throw v0
.end method

.method private final zzn(Z)I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 4
    .line 5
    :goto_0
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "End of input"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 37
    .line 38
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 39
    .line 40
    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 41
    .line 42
    add-int/lit8 v4, v0, 0x1

    .line 43
    .line 44
    aget-char v5, v3, v0

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    if-ne v5, v6, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 54
    .line 55
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_3
    const/16 v7, 0x20

    .line 60
    .line 61
    if-eq v5, v7, :cond_10

    .line 62
    .line 63
    const/16 v7, 0xd

    .line 64
    .line 65
    if-eq v5, v7, :cond_10

    .line 66
    .line 67
    const/16 v7, 0x9

    .line 68
    .line 69
    if-ne v5, v7, :cond_4

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_4
    const/16 v7, 0x2f

    .line 74
    .line 75
    if-ne v5, v7, :cond_e

    .line 76
    .line 77
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 78
    .line 79
    const/4 v5, 0x2

    .line 80
    if-ne v4, v1, :cond_6

    .line 81
    .line 82
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 83
    .line 84
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    return v7

    .line 97
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 98
    .line 99
    .line 100
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 101
    .line 102
    aget-char v1, v3, v0

    .line 103
    .line 104
    const/16 v3, 0x2a

    .line 105
    .line 106
    if-eq v1, v3, :cond_8

    .line 107
    .line 108
    if-eq v1, v7, :cond_7

    .line 109
    .line 110
    return v7

    .line 111
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzG()V

    .line 116
    .line 117
    .line 118
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 119
    .line 120
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 126
    .line 127
    :goto_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 128
    .line 129
    add-int/2addr v0, v5

    .line 130
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 131
    .line 132
    if-le v0, v1, :cond_a

    .line 133
    .line 134
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_9
    const-string p1, "Unterminated comment"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    throw p1

    .line 148
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 149
    .line 150
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 151
    .line 152
    aget-char v0, v0, v1

    .line 153
    .line 154
    if-ne v0, v6, :cond_b

    .line 155
    .line 156
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 157
    .line 158
    add-int/2addr v0, v2

    .line 159
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_b
    const/4 v0, 0x0

    .line 167
    :goto_4
    if-ge v0, v5, :cond_d

    .line 168
    .line 169
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 170
    .line 171
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 172
    .line 173
    add-int/2addr v3, v0

    .line 174
    aget-char v1, v1, v3

    .line 175
    .line 176
    const-string v3, "*/"

    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v1, v3, :cond_c

    .line 183
    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_c
    :goto_5
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 188
    .line 189
    add-int/2addr v0, v2

    .line 190
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 194
    .line 195
    add-int/2addr v0, v5

    .line 196
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_e
    const/16 v0, 0x23

    .line 201
    .line 202
    if-ne v5, v0, :cond_f

    .line 203
    .line 204
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 205
    .line 206
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzG()V

    .line 210
    .line 211
    .line 212
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 213
    .line 214
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_f
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 219
    .line 220
    return v5

    .line 221
    :cond_10
    :goto_6
    move v0, v4

    .line 222
    goto/16 :goto_0
.end method

.method public static bridge synthetic zzu(Lcom/google/ads/interactivemedia/v3/internal/zzacc;Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 0

    const-string p1, "a name"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    return-object p0
.end method

.method private final zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#malformed-json"

    .line 8
    .line 9
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacf;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private final zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacd;->zza(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "Expected "

    .line 20
    .line 21
    const-string v5, " but was "

    .line 22
    .line 23
    invoke-static {v4, p1, v5, v2, v3}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "\nSee "

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x9

    .line 33
    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    .line 36
    const-string v0, "adapter-not-null-safe"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "unexpected-json-structure"

    .line 40
    .line 41
    :goto_0
    const-string v2, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzb:Ljava/io/Reader;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public zza()D
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi:J

    .line 29
    .line 30
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    .line 34
    const/16 v3, 0xb

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 39
    .line 40
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 43
    .line 44
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 45
    .line 46
    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 50
    .line 51
    add-int/2addr v4, v5

    .line 52
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v1, 0x8

    .line 56
    .line 57
    if-eq v0, v1, :cond_6

    .line 58
    .line 59
    const/16 v4, 0x9

    .line 60
    .line 61
    if-ne v0, v4, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/16 v1, 0xa

    .line 65
    .line 66
    if-ne v0, v1, :cond_4

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzC()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    if-ne v0, v3, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    const-string v0, "a double"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    throw v0

    .line 85
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 86
    .line 87
    const/16 v0, 0x27

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    const/16 v0, 0x22

    .line 91
    .line 92
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 97
    .line 98
    :goto_2
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 107
    .line 108
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 109
    .line 110
    if-eq v3, v4, :cond_9

    .line 111
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_8

    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_8

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v3, "JSON forbids NaN and infinities: "

    .line 128
    .line 129
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    throw v0

    .line 144
    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 145
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 146
    .line 147
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 150
    .line 151
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 152
    .line 153
    add-int/lit8 v3, v3, -0x1

    .line 154
    .line 155
    aget v4, v2, v3

    .line 156
    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 158
    .line 159
    aput v4, v2, v3

    .line 160
    .line 161
    return-wide v0
.end method

.method public zzb()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const-string v2, "Expected an int but was "

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi:J

    .line 17
    .line 18
    long-to-int v4, v0

    .line 19
    int-to-long v5, v4

    .line 20
    cmp-long v7, v0, v5

    .line 21
    .line 22
    if-nez v7, :cond_1

    .line 23
    .line 24
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 27
    .line 28
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    aget v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    aput v2, v0, v1

    .line 37
    .line 38
    return v4

    .line 39
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v3

    .line 64
    :cond_2
    const/16 v1, 0x10

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 69
    .line 70
    new-instance v1, Ljava/lang/String;

    .line 71
    .line 72
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 73
    .line 74
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 75
    .line 76
    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 80
    .line 81
    add-int/2addr v4, v5

    .line 82
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    const/16 v1, 0xa

    .line 86
    .line 87
    const/16 v4, 0x8

    .line 88
    .line 89
    if-eq v0, v4, :cond_5

    .line 90
    .line 91
    const/16 v5, 0x9

    .line 92
    .line 93
    if-eq v0, v5, :cond_5

    .line 94
    .line 95
    if-ne v0, v1, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "an int"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    throw v0

    .line 105
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzC()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    if-ne v0, v4, :cond_7

    .line 115
    .line 116
    const/16 v0, 0x27

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/16 v0, 0x22

    .line 120
    .line 121
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 126
    .line 127
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 136
    .line 137
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 138
    .line 139
    add-int/lit8 v4, v4, -0x1

    .line 140
    .line 141
    aget v5, v1, v4

    .line 142
    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 144
    .line 145
    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    return v0

    .line 148
    :catch_0
    nop

    .line 149
    :goto_3
    const/16 v0, 0xb

    .line 150
    .line 151
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 152
    .line 153
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    double-to-int v4, v0

    .line 160
    int-to-double v5, v4

    .line 161
    cmpl-double v7, v5, v0

    .line 162
    .line 163
    if-nez v7, :cond_8

    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 167
    .line 168
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 169
    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 171
    .line 172
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 173
    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    .line 176
    aget v2, v0, v1

    .line 177
    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    aput v2, v0, v1

    .line 181
    .line 182
    return v4

    .line 183
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {v2, v1, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0
.end method

.method public zzc()J
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi:J

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 36
    .line 37
    new-instance v1, Ljava/lang/String;

    .line 38
    .line 39
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 40
    .line 41
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 42
    .line 43
    invoke-direct {v1, v0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 47
    .line 48
    add-int/2addr v3, v4

    .line 49
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    const/16 v1, 0xa

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    if-eq v0, v3, :cond_4

    .line 57
    .line 58
    const/16 v4, 0x9

    .line 59
    .line 60
    if-eq v0, v4, :cond_4

    .line 61
    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const-string v0, "a long"

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    throw v0

    .line 72
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzC()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    if-ne v0, v3, :cond_6

    .line 82
    .line 83
    const/16 v0, 0x27

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    const/16 v0, 0x22

    .line 87
    .line 88
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 93
    .line 94
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 101
    .line 102
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 103
    .line 104
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 105
    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 107
    .line 108
    aget v5, v3, v4

    .line 109
    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    return-wide v0

    .line 115
    :catch_0
    nop

    .line 116
    :goto_3
    const/16 v0, 0xb

    .line 117
    .line 118
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    double-to-long v3, v0

    .line 127
    long-to-double v5, v3

    .line 128
    cmpl-double v7, v5, v0

    .line 129
    .line 130
    if-nez v7, :cond_7

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 134
    .line 135
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 138
    .line 139
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 140
    .line 141
    add-int/lit8 v1, v1, -0x1

    .line 142
    .line 143
    aget v2, v0, v1

    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    aput v2, v0, v1

    .line 148
    .line 149
    return-wide v3

    .line 150
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzv()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "Expected a long but was "

    .line 159
    .line 160
    invoke-static {v3, v1, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public zze()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzA(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public zzf()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzA(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public zzg()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzC()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    const-string v0, "a name"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    throw v0
.end method

.method public zzh()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzC()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzB(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 66
    .line 67
    new-instance v1, Ljava/lang/String;

    .line 68
    .line 69
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 70
    .line 71
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 72
    .line 73
    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 77
    .line 78
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 79
    .line 80
    add-int/2addr v0, v2

    .line 81
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 82
    .line 83
    move-object v0, v1

    .line 84
    :goto_0
    const/4 v1, 0x0

    .line 85
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 88
    .line 89
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 90
    .line 91
    add-int/lit8 v2, v2, -0x1

    .line 92
    .line 93
    aget v3, v1, v2

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    aput v3, v1, v2

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_6
    const-string v0, "a string"

    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    throw v0
.end method

.method public zzi()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzE(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput v2, v0, v1

    .line 24
    .line 25
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "BEGIN_ARRAY"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    throw v0
.end method

.method public zzj()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzE(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v0, "BEGIN_OBJECT"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0
.end method

.method public zzk()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string v0, "END_ARRAY"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    throw v0
.end method

.method public zzl()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v3, v2, v1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x2

    .line 26
    .line 27
    aget v2, v1, v0

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    aput v2, v1, v0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string v0, "END_OBJECT"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    throw v0
.end method

.method public zzm()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 16
    .line 17
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "null"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    throw v0
.end method

.method public zzo()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_1
    const/16 v3, 0x27

    .line 12
    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    const-string v5, "<skipped>"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    goto/16 :goto_3

    .line 22
    .line 23
    :pswitch_1
    return-void

    .line 24
    :pswitch_2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 25
    .line 26
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 27
    .line 28
    add-int/2addr v2, v3

    .line 29
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :pswitch_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzH()V

    .line 33
    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 38
    .line 39
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    aput-object v5, v1, v2

    .line 44
    .line 45
    :goto_0
    const/4 v1, 0x0

    .line 46
    goto :goto_3

    .line 47
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzF(C)V

    .line 48
    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 53
    .line 54
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    aput-object v5, v1, v2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzF(C)V

    .line 62
    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 67
    .line 68
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 69
    .line 70
    add-int/lit8 v2, v2, -0x1

    .line 71
    .line 72
    aput-object v5, v1, v2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzH()V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzF(C)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzF(C)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :pswitch_9
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 88
    .line 89
    add-int/lit8 v2, v2, -0x1

    .line 90
    .line 91
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 92
    .line 93
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :pswitch_a
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzE(I)V

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :pswitch_b
    if-nez v1, :cond_2

    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn:[Ljava/lang/String;

    .line 105
    .line 106
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 107
    .line 108
    add-int/lit8 v2, v2, -0x1

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    aput-object v3, v1, v2

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    :cond_2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 115
    .line 116
    add-int/lit8 v2, v2, -0x1

    .line 117
    .line 118
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_c
    const/4 v2, 0x3

    .line 122
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzE(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    :goto_3
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 127
    .line 128
    if-gtz v1, :cond_0

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 131
    .line 132
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 133
    .line 134
    add-int/lit8 v1, v1, -0x1

    .line 135
    .line 136
    aget v2, v0, v1

    .line 137
    .line 138
    add-int/2addr v2, v6

    .line 139
    aput v2, v0, v1

    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public zzp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public zzq()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v3, v0, v1

    .line 23
    .line 24
    add-int/2addr v3, v2

    .line 25
    aput v3, v0, v1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    const/4 v1, 0x6

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo:[I

    .line 34
    .line 35
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    aget v4, v0, v1

    .line 40
    .line 41
    add-int/2addr v4, v2

    .line 42
    aput v4, v0, v1

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    const-string v0, "a boolean"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzz(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0
.end method

.method public zzr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    return v0

    .line 15
    :pswitch_0
    const/4 v0, 0x7

    .line 16
    return v0

    .line 17
    :pswitch_1
    const/4 v0, 0x5

    .line 18
    return v0

    .line 19
    :pswitch_2
    const/4 v0, 0x6

    .line 20
    return v0

    .line 21
    :pswitch_3
    const/16 v0, 0x9

    .line 22
    .line 23
    return v0

    .line 24
    :pswitch_4
    const/16 v0, 0x8

    .line 25
    .line 26
    return v0

    .line 27
    :pswitch_5
    const/4 v0, 0x2

    .line 28
    return v0

    .line 29
    :pswitch_6
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :pswitch_7
    const/4 v0, 0x4

    .line 32
    return v0

    .line 33
    :pswitch_8
    const/4 v0, 0x3

    .line 34
    return v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzs()I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 4
    .line 5
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    aget v4, v1, v2

    .line 10
    .line 11
    const/16 v7, 0xa

    .line 12
    .line 13
    const/16 v8, 0x27

    .line 14
    .line 15
    const/16 v9, 0x5d

    .line 16
    .line 17
    const/16 v10, 0x3b

    .line 18
    .line 19
    const/16 v11, 0x2c

    .line 20
    .line 21
    const/4 v12, 0x6

    .line 22
    const/4 v13, 0x3

    .line 23
    const/4 v15, 0x4

    .line 24
    const/4 v5, 0x5

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v14, 0x1

    .line 27
    if-ne v4, v14, :cond_1

    .line 28
    .line 29
    aput v6, v1, v2

    .line 30
    .line 31
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    if-ne v4, v6, :cond_4

    .line 35
    .line 36
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v1, v11, :cond_0

    .line 41
    .line 42
    if-eq v1, v10, :cond_3

    .line 43
    .line 44
    if-ne v1, v9, :cond_2

    .line 45
    .line 46
    :goto_1
    const/4 v13, 0x4

    .line 47
    goto/16 :goto_1f

    .line 48
    .line 49
    :cond_2
    const-string v1, "Unterminated array"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    throw v1

    .line 56
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/16 v6, 0x7d

    .line 61
    .line 62
    if-eq v4, v13, :cond_5

    .line 63
    .line 64
    if-ne v4, v5, :cond_6

    .line 65
    .line 66
    :cond_5
    const/4 v7, 0x2

    .line 67
    const/4 v9, 0x4

    .line 68
    goto/16 :goto_1d

    .line 69
    .line 70
    :cond_6
    if-ne v4, v15, :cond_9

    .line 71
    .line 72
    aput v5, v1, v2

    .line 73
    .line 74
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/16 v2, 0x3a

    .line 79
    .line 80
    if-eq v1, v2, :cond_0

    .line 81
    .line 82
    const/16 v2, 0x3d

    .line 83
    .line 84
    if-ne v1, v2, :cond_8

    .line 85
    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 87
    .line 88
    .line 89
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 90
    .line 91
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 92
    .line 93
    if-lt v1, v2, :cond_7

    .line 94
    .line 95
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 102
    .line 103
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 104
    .line 105
    aget-char v1, v1, v2

    .line 106
    .line 107
    const/16 v6, 0x3e

    .line 108
    .line 109
    if-ne v1, v6, :cond_0

    .line 110
    .line 111
    add-int/2addr v2, v14

    .line 112
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    const-string v1, "Expected \':\'"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    throw v1

    .line 122
    :cond_9
    if-ne v4, v12, :cond_c

    .line 123
    .line 124
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 125
    .line 126
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 127
    .line 128
    if-ne v1, v2, :cond_b

    .line 129
    .line 130
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 131
    .line 132
    .line 133
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 134
    .line 135
    add-int/lit8 v2, v1, -0x1

    .line 136
    .line 137
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 138
    .line 139
    add-int/2addr v1, v15

    .line 140
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 141
    .line 142
    if-le v1, v2, :cond_a

    .line 143
    .line 144
    invoke-direct {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_a

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_a
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 152
    .line 153
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 154
    .line 155
    aget-char v15, v2, v1

    .line 156
    .line 157
    const/16 v12, 0x29

    .line 158
    .line 159
    if-ne v15, v12, :cond_b

    .line 160
    .line 161
    add-int/lit8 v12, v1, 0x1

    .line 162
    .line 163
    aget-char v12, v2, v12

    .line 164
    .line 165
    if-ne v12, v9, :cond_b

    .line 166
    .line 167
    add-int/lit8 v12, v1, 0x2

    .line 168
    .line 169
    aget-char v12, v2, v12

    .line 170
    .line 171
    if-ne v12, v6, :cond_b

    .line 172
    .line 173
    add-int/lit8 v6, v1, 0x3

    .line 174
    .line 175
    aget-char v6, v2, v6

    .line 176
    .line 177
    if-ne v6, v8, :cond_b

    .line 178
    .line 179
    add-int/lit8 v6, v1, 0x4

    .line 180
    .line 181
    aget-char v2, v2, v6

    .line 182
    .line 183
    if-ne v2, v7, :cond_b

    .line 184
    .line 185
    add-int/2addr v1, v5

    .line 186
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 187
    .line 188
    :cond_b
    :goto_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzl:[I

    .line 189
    .line 190
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzm:I

    .line 191
    .line 192
    add-int/2addr v2, v3

    .line 193
    const/4 v6, 0x7

    .line 194
    aput v6, v1, v2

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_c
    const/4 v6, 0x7

    .line 199
    if-ne v4, v6, :cond_e

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-ne v2, v3, :cond_d

    .line 207
    .line 208
    const/16 v13, 0x11

    .line 209
    .line 210
    goto/16 :goto_1f

    .line 211
    .line 212
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 213
    .line 214
    .line 215
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 216
    .line 217
    add-int/2addr v2, v3

    .line 218
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_e
    const/4 v1, 0x0

    .line 222
    const/16 v2, 0x8

    .line 223
    .line 224
    if-eq v4, v2, :cond_40

    .line 225
    .line 226
    :goto_3
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    const/16 v6, 0x22

    .line 231
    .line 232
    if-eq v2, v6, :cond_3f

    .line 233
    .line 234
    if-eq v2, v8, :cond_3e

    .line 235
    .line 236
    if-eq v2, v11, :cond_3b

    .line 237
    .line 238
    if-eq v2, v10, :cond_3b

    .line 239
    .line 240
    const/16 v6, 0x5b

    .line 241
    .line 242
    if-eq v2, v6, :cond_49

    .line 243
    .line 244
    if-eq v2, v9, :cond_3a

    .line 245
    .line 246
    const/16 v4, 0x7b

    .line 247
    .line 248
    if-eq v2, v4, :cond_39

    .line 249
    .line 250
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 251
    .line 252
    add-int/2addr v2, v3

    .line 253
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 254
    .line 255
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 256
    .line 257
    aget-char v2, v3, v2

    .line 258
    .line 259
    const/16 v3, 0x74

    .line 260
    .line 261
    if-eq v2, v3, :cond_14

    .line 262
    .line 263
    const/16 v3, 0x54

    .line 264
    .line 265
    if-ne v2, v3, :cond_f

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_f
    const/16 v3, 0x66

    .line 269
    .line 270
    if-eq v2, v3, :cond_13

    .line 271
    .line 272
    const/16 v3, 0x46

    .line 273
    .line 274
    if-ne v2, v3, :cond_10

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_10
    const/16 v3, 0x6e

    .line 278
    .line 279
    if-eq v2, v3, :cond_12

    .line 280
    .line 281
    const/16 v3, 0x4e

    .line 282
    .line 283
    if-ne v2, v3, :cond_11

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_11
    :goto_4
    const/4 v4, 0x0

    .line 287
    goto :goto_a

    .line 288
    :cond_12
    :goto_5
    const-string v2, "NULL"

    .line 289
    .line 290
    const-string v3, "null"

    .line 291
    .line 292
    const/4 v4, 0x7

    .line 293
    goto :goto_8

    .line 294
    :cond_13
    :goto_6
    const-string v2, "FALSE"

    .line 295
    .line 296
    const-string v3, "false"

    .line 297
    .line 298
    const/4 v4, 0x6

    .line 299
    goto :goto_8

    .line 300
    :cond_14
    :goto_7
    const-string v2, "TRUE"

    .line 301
    .line 302
    const-string v3, "true"

    .line 303
    .line 304
    const/4 v4, 0x5

    .line 305
    :goto_8
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 306
    .line 307
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 308
    .line 309
    const/4 v9, 0x0

    .line 310
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-ge v9, v10, :cond_17

    .line 315
    .line 316
    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 317
    .line 318
    add-int/2addr v10, v9

    .line 319
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 320
    .line 321
    if-lt v10, v11, :cond_15

    .line 322
    .line 323
    add-int/lit8 v10, v9, 0x1

    .line 324
    .line 325
    invoke-direct {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-nez v10, :cond_15

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_15
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 333
    .line 334
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 335
    .line 336
    add-int/2addr v11, v9

    .line 337
    aget-char v10, v10, v11

    .line 338
    .line 339
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    if-eq v10, v11, :cond_16

    .line 344
    .line 345
    if-eq v6, v8, :cond_11

    .line 346
    .line 347
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-ne v10, v11, :cond_11

    .line 352
    .line 353
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_17
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 357
    .line 358
    add-int/2addr v2, v10

    .line 359
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 360
    .line 361
    if-lt v2, v3, :cond_18

    .line 362
    .line 363
    add-int/lit8 v2, v10, 0x1

    .line 364
    .line 365
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_19

    .line 370
    .line 371
    :cond_18
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 372
    .line 373
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 374
    .line 375
    add-int/2addr v3, v10

    .line 376
    aget-char v2, v2, v3

    .line 377
    .line 378
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzJ(C)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_19

    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_19
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 386
    .line 387
    add-int/2addr v2, v10

    .line 388
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 389
    .line 390
    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 391
    .line 392
    :goto_a
    if-nez v4, :cond_38

    .line 393
    .line 394
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 395
    .line 396
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 397
    .line 398
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 399
    .line 400
    const-wide/16 v8, 0x0

    .line 401
    .line 402
    move-wide v11, v8

    .line 403
    const/4 v6, 0x0

    .line 404
    const/4 v10, 0x0

    .line 405
    const/4 v15, 0x1

    .line 406
    const/16 v16, 0x0

    .line 407
    .line 408
    :goto_b
    add-int v1, v3, v10

    .line 409
    .line 410
    if-ne v1, v4, :cond_1e

    .line 411
    .line 412
    const/16 v1, 0x400

    .line 413
    .line 414
    if-ne v10, v1, :cond_1b

    .line 415
    .line 416
    :cond_1a
    :goto_c
    const/4 v14, 0x0

    .line 417
    goto/16 :goto_1b

    .line 418
    .line 419
    :cond_1b
    add-int/lit8 v1, v10, 0x1

    .line 420
    .line 421
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzI(I)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_1d

    .line 426
    .line 427
    :cond_1c
    const/4 v1, 0x2

    .line 428
    goto/16 :goto_12

    .line 429
    .line 430
    :cond_1d
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 431
    .line 432
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf:I

    .line 433
    .line 434
    move v4, v3

    .line 435
    move v3, v1

    .line 436
    :cond_1e
    add-int v1, v3, v10

    .line 437
    .line 438
    aget-char v1, v2, v1

    .line 439
    .line 440
    const/16 v7, 0x2b

    .line 441
    .line 442
    if-eq v1, v7, :cond_35

    .line 443
    .line 444
    const/16 v7, 0x45

    .line 445
    .line 446
    if-eq v1, v7, :cond_33

    .line 447
    .line 448
    const/16 v7, 0x65

    .line 449
    .line 450
    if-eq v1, v7, :cond_33

    .line 451
    .line 452
    const/16 v7, 0x2d

    .line 453
    .line 454
    if-eq v1, v7, :cond_31

    .line 455
    .line 456
    const/16 v7, 0x2e

    .line 457
    .line 458
    if-eq v1, v7, :cond_30

    .line 459
    .line 460
    const/16 v7, 0x30

    .line 461
    .line 462
    if-lt v1, v7, :cond_29

    .line 463
    .line 464
    const/16 v7, 0x39

    .line 465
    .line 466
    if-le v1, v7, :cond_1f

    .line 467
    .line 468
    goto :goto_11

    .line 469
    :cond_1f
    if-eq v6, v14, :cond_20

    .line 470
    .line 471
    if-nez v6, :cond_21

    .line 472
    .line 473
    :cond_20
    const/4 v7, 0x6

    .line 474
    goto :goto_10

    .line 475
    :cond_21
    const/4 v7, 0x2

    .line 476
    if-ne v6, v7, :cond_26

    .line 477
    .line 478
    cmp-long v7, v11, v8

    .line 479
    .line 480
    if-nez v7, :cond_22

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_22
    add-int/lit8 v1, v1, -0x30

    .line 484
    .line 485
    const-wide/16 v17, 0xa

    .line 486
    .line 487
    mul-long v17, v17, v11

    .line 488
    .line 489
    const-wide v19, -0xcccccccccccccccL

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    cmp-long v7, v11, v19

    .line 495
    .line 496
    int-to-long v8, v1

    .line 497
    sub-long v17, v17, v8

    .line 498
    .line 499
    if-gtz v7, :cond_23

    .line 500
    .line 501
    if-nez v7, :cond_24

    .line 502
    .line 503
    cmp-long v1, v17, v11

    .line 504
    .line 505
    if-gez v1, :cond_24

    .line 506
    .line 507
    :cond_23
    const/4 v1, 0x1

    .line 508
    goto :goto_d

    .line 509
    :cond_24
    const/4 v1, 0x0

    .line 510
    :goto_d
    and-int/2addr v15, v1

    .line 511
    move-wide/from16 v11, v17

    .line 512
    .line 513
    :goto_e
    const/4 v7, 0x6

    .line 514
    :cond_25
    :goto_f
    const-wide/16 v8, 0x0

    .line 515
    .line 516
    goto/16 :goto_1a

    .line 517
    .line 518
    :cond_26
    if-ne v6, v13, :cond_27

    .line 519
    .line 520
    const/4 v6, 0x4

    .line 521
    goto :goto_e

    .line 522
    :cond_27
    const/4 v7, 0x6

    .line 523
    if-eq v6, v5, :cond_28

    .line 524
    .line 525
    if-ne v6, v7, :cond_25

    .line 526
    .line 527
    :cond_28
    const/4 v6, 0x7

    .line 528
    goto :goto_f

    .line 529
    :goto_10
    add-int/lit8 v1, v1, -0x30

    .line 530
    .line 531
    neg-int v1, v1

    .line 532
    int-to-long v11, v1

    .line 533
    const/4 v6, 0x2

    .line 534
    goto :goto_f

    .line 535
    :cond_29
    :goto_11
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzJ(C)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-eqz v1, :cond_1c

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :goto_12
    if-ne v6, v1, :cond_2e

    .line 543
    .line 544
    if-eqz v15, :cond_2a

    .line 545
    .line 546
    const-wide/high16 v1, -0x8000000000000000L

    .line 547
    .line 548
    cmp-long v3, v11, v1

    .line 549
    .line 550
    if-nez v3, :cond_2b

    .line 551
    .line 552
    if-eqz v16, :cond_2a

    .line 553
    .line 554
    :goto_13
    const-wide/16 v8, 0x0

    .line 555
    .line 556
    goto :goto_14

    .line 557
    :cond_2a
    const/4 v1, 0x2

    .line 558
    const/4 v6, 0x2

    .line 559
    goto :goto_18

    .line 560
    :cond_2b
    move/from16 v14, v16

    .line 561
    .line 562
    goto :goto_13

    .line 563
    :goto_14
    cmp-long v1, v11, v8

    .line 564
    .line 565
    if-nez v1, :cond_2c

    .line 566
    .line 567
    if-nez v14, :cond_2a

    .line 568
    .line 569
    goto :goto_15

    .line 570
    :cond_2c
    if-eqz v14, :cond_2d

    .line 571
    .line 572
    goto :goto_16

    .line 573
    :cond_2d
    :goto_15
    neg-long v11, v11

    .line 574
    :goto_16
    iput-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi:J

    .line 575
    .line 576
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 577
    .line 578
    add-int/2addr v1, v10

    .line 579
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 580
    .line 581
    const/16 v14, 0xf

    .line 582
    .line 583
    :goto_17
    iput v14, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 584
    .line 585
    goto :goto_1b

    .line 586
    :cond_2e
    :goto_18
    if-eq v6, v1, :cond_2f

    .line 587
    .line 588
    const/4 v1, 0x4

    .line 589
    if-eq v6, v1, :cond_2f

    .line 590
    .line 591
    const/4 v1, 0x7

    .line 592
    if-ne v6, v1, :cond_1a

    .line 593
    .line 594
    :cond_2f
    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzj:I

    .line 595
    .line 596
    const/16 v14, 0x10

    .line 597
    .line 598
    goto :goto_17

    .line 599
    :cond_30
    const/4 v1, 0x2

    .line 600
    const/4 v7, 0x6

    .line 601
    if-ne v6, v1, :cond_1a

    .line 602
    .line 603
    const/4 v6, 0x3

    .line 604
    goto :goto_1a

    .line 605
    :cond_31
    const/4 v1, 0x2

    .line 606
    const/4 v7, 0x6

    .line 607
    if-nez v6, :cond_32

    .line 608
    .line 609
    const/4 v6, 0x1

    .line 610
    const/16 v16, 0x1

    .line 611
    .line 612
    goto :goto_1a

    .line 613
    :cond_32
    if-ne v6, v5, :cond_1a

    .line 614
    .line 615
    :goto_19
    const/4 v6, 0x6

    .line 616
    goto :goto_1a

    .line 617
    :cond_33
    const/4 v1, 0x2

    .line 618
    const/4 v7, 0x6

    .line 619
    if-eq v6, v1, :cond_34

    .line 620
    .line 621
    const/4 v1, 0x4

    .line 622
    if-ne v6, v1, :cond_1a

    .line 623
    .line 624
    :cond_34
    const/4 v6, 0x5

    .line 625
    goto :goto_1a

    .line 626
    :cond_35
    const/4 v7, 0x6

    .line 627
    if-ne v6, v5, :cond_1a

    .line 628
    .line 629
    goto :goto_19

    .line 630
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    .line 631
    .line 632
    const/16 v7, 0xa

    .line 633
    .line 634
    goto/16 :goto_b

    .line 635
    .line 636
    :goto_1b
    if-eqz v14, :cond_36

    .line 637
    .line 638
    return v14

    .line 639
    :cond_36
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzd:[C

    .line 640
    .line 641
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 642
    .line 643
    aget-char v1, v1, v2

    .line 644
    .line 645
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzJ(C)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-eqz v1, :cond_37

    .line 650
    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 652
    .line 653
    .line 654
    const/16 v1, 0xa

    .line 655
    .line 656
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 657
    .line 658
    return v1

    .line 659
    :cond_37
    const-string v1, "Expected value"

    .line 660
    .line 661
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    throw v1

    .line 666
    :cond_38
    return v4

    .line 667
    :cond_39
    const/4 v13, 0x1

    .line 668
    goto/16 :goto_1f

    .line 669
    .line 670
    :cond_3a
    if-ne v4, v14, :cond_3b

    .line 671
    .line 672
    goto/16 :goto_1

    .line 673
    .line 674
    :cond_3b
    if-eq v4, v14, :cond_3d

    .line 675
    .line 676
    const/4 v7, 0x2

    .line 677
    if-ne v4, v7, :cond_3c

    .line 678
    .line 679
    goto :goto_1c

    .line 680
    :cond_3c
    const-string v1, "Unexpected value"

    .line 681
    .line 682
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    throw v1

    .line 687
    :cond_3d
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 688
    .line 689
    .line 690
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 691
    .line 692
    add-int/2addr v1, v3

    .line 693
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 694
    .line 695
    const/4 v1, 0x7

    .line 696
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 697
    .line 698
    return v1

    .line 699
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 700
    .line 701
    .line 702
    const/16 v1, 0x8

    .line 703
    .line 704
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 705
    .line 706
    return v1

    .line 707
    :cond_3f
    const/16 v13, 0x9

    .line 708
    .line 709
    goto :goto_1f

    .line 710
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 711
    .line 712
    const-string v2, "JsonReader is closed"

    .line 713
    .line 714
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v1

    .line 718
    :goto_1d
    aput v9, v1, v2

    .line 719
    .line 720
    if-ne v4, v5, :cond_43

    .line 721
    .line 722
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-eq v1, v11, :cond_43

    .line 727
    .line 728
    if-eq v1, v10, :cond_42

    .line 729
    .line 730
    if-ne v1, v6, :cond_41

    .line 731
    .line 732
    :goto_1e
    const/4 v13, 0x2

    .line 733
    goto :goto_1f

    .line 734
    :cond_41
    const-string v1, "Unterminated object"

    .line 735
    .line 736
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    throw v1

    .line 741
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 742
    .line 743
    .line 744
    :cond_43
    invoke-direct {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzn(Z)I

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    const/16 v2, 0x22

    .line 749
    .line 750
    if-eq v1, v2, :cond_48

    .line 751
    .line 752
    if-eq v1, v8, :cond_47

    .line 753
    .line 754
    const-string v2, "Expected name"

    .line 755
    .line 756
    if-eq v1, v6, :cond_45

    .line 757
    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 759
    .line 760
    .line 761
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 762
    .line 763
    add-int/2addr v4, v3

    .line 764
    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 765
    .line 766
    int-to-char v1, v1

    .line 767
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzJ(C)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-eqz v1, :cond_44

    .line 772
    .line 773
    const/16 v13, 0xe

    .line 774
    .line 775
    goto :goto_1f

    .line 776
    :cond_44
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    throw v1

    .line 781
    :cond_45
    if-eq v4, v5, :cond_46

    .line 782
    .line 783
    goto :goto_1e

    .line 784
    :cond_46
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzy(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    throw v1

    .line 789
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzD()V

    .line 790
    .line 791
    .line 792
    const/16 v1, 0xc

    .line 793
    .line 794
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 795
    .line 796
    return v1

    .line 797
    :cond_48
    const/16 v13, 0xd

    .line 798
    .line 799
    :cond_49
    :goto_1f
    iput v13, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 800
    .line 801
    return v13
.end method

.method public final zzt()Lcom/google/ads/interactivemedia/v3/internal/zzwg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    return-object v0
.end method

.method public zzv()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzg:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzh:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, " at line "

    .line 15
    .line 16
    const-string v4, " column "

    .line 17
    .line 18
    invoke-static {v3, v0, v4}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " path "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final zzw(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 5
    .line 6
    return-void
.end method

.method public final zzx()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
