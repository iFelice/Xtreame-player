.class public Lcom/google/ads/interactivemedia/v3/internal/zzace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# instance fields
.field private final zzd:Ljava/io/Writer;

.field private zze:[I

.field private zzf:I

.field private zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const/16 v1, 0x80

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/String;

    .line 13
    .line 14
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb:[Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/16 v3, 0x1f

    .line 19
    .line 20
    if-gt v2, v3, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-array v4, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v3, v4, v1

    .line 29
    .line 30
    const-string v3, "\\u%04x"

    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb:[Ljava/lang/String;

    .line 37
    .line 38
    aput-object v3, v4, v2

    .line 39
    .line 40
    add-int/2addr v2, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb:[Ljava/lang/String;

    .line 43
    .line 44
    const/16 v1, 0x22

    .line 45
    .line 46
    const-string v2, "\\\""

    .line 47
    .line 48
    aput-object v2, v0, v1

    .line 49
    .line 50
    const/16 v1, 0x5c

    .line 51
    .line 52
    const-string v2, "\\\\"

    .line 53
    .line 54
    aput-object v2, v0, v1

    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    const-string v2, "\\t"

    .line 59
    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    const-string v2, "\\b"

    .line 65
    .line 66
    aput-object v2, v0, v1

    .line 67
    .line 68
    const/16 v1, 0xa

    .line 69
    .line 70
    const-string v2, "\\n"

    .line 71
    .line 72
    aput-object v2, v0, v1

    .line 73
    .line 74
    const/16 v1, 0xd

    .line 75
    .line 76
    const-string v2, "\\r"

    .line 77
    .line 78
    aput-object v2, v0, v1

    .line 79
    .line 80
    const/16 v1, 0xc

    .line 81
    .line 82
    const-string v2, "\\f"

    .line 83
    .line 84
    aput-object v2, v0, v1

    .line 85
    .line 86
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, [Ljava/lang/String;

    .line 91
    .line 92
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzc:[Ljava/lang/String;

    .line 93
    .line 94
    const-string v1, "\\u003c"

    .line 95
    .line 96
    const/16 v2, 0x3c

    .line 97
    .line 98
    aput-object v1, v0, v2

    .line 99
    .line 100
    const/16 v1, 0x3e

    .line 101
    .line 102
    const-string v2, "\\u003e"

    .line 103
    .line 104
    aput-object v2, v0, v1

    .line 105
    .line 106
    const/16 v1, 0x26

    .line 107
    .line 108
    const-string v2, "\\u0026"

    .line 109
    .line 110
    aput-object v2, v0, v1

    .line 111
    .line 112
    const/16 v1, 0x3d

    .line 113
    .line 114
    const-string v2, "\\u003d"

    .line 115
    .line 116
    aput-object v2, v0, v1

    .line 117
    .line 118
    const/16 v1, 0x27

    .line 119
    .line 120
    const-string v2, "\\u0027"

    .line 121
    .line 122
    aput-object v2, v0, v1

    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzz(I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn:Z

    .line 23
    .line 24
    const-string v0, "out == null"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 30
    .line 31
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzo(Lcom/google/ads/interactivemedia/v3/internal/zzvl;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final zzA(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method private final zzB(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzc:[Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb:[Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_1
    if-ge v3, v1, :cond_5

    .line 24
    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/16 v7, 0x80

    .line 32
    .line 33
    if-ge v6, v7, :cond_1

    .line 34
    .line 35
    aget-object v6, v0, v6

    .line 36
    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/16 v7, 0x2028

    .line 41
    .line 42
    if-ne v6, v7, :cond_2

    .line 43
    .line 44
    const-string v6, "\\u2028"

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v7, 0x2029

    .line 48
    .line 49
    if-ne v6, v7, :cond_4

    .line 50
    .line 51
    const-string v6, "\\u2029"

    .line 52
    .line 53
    :goto_2
    if-ge v4, v3, :cond_3

    .line 54
    .line 55
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 56
    .line 57
    sub-int/2addr v3, v4

    .line 58
    invoke-virtual {v7, p1, v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move v4, v5

    .line 67
    :cond_4
    move v3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    if-ge v4, v1, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 72
    .line 73
    sub-int/2addr v1, v4

    .line 74
    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final zzC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzi:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzy()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzA(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzB(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Nesting problem."

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_2
    return-void
.end method

.method private final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "JsonWriter is closed."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private final zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_1

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Nesting problem."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p1, :cond_3

    .line 21
    .line 22
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 27
    .line 28
    if-ne v0, p2, :cond_2

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzy()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_3
    const-string p2, "Dangling name: "

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p2
.end method

.method private final zzw(IC)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzz(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private final zzx()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 21
    .line 22
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "JSON must have only one top-level value."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "Nesting problem."

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzA(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzh:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzA(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzi:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzy()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzA(I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzy()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private final zzy()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zzb()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zza()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-void
.end method

.method private final zzz(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    add-int/2addr v0, v0

    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 16
    .line 17
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 22
    .line 23
    aput p1, v0, v1

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:[I

    .line 15
    .line 16
    aget v0, v0, v2

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v1, "Incomplete document"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzf:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "JsonWriter is closed."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public zzb()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzw(IC)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public zzc()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const/16 v1, 0x7b

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzw(IC)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public zzd()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x5d

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public zze()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7d

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    const-string v0, "name == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "Please begin an object before writing a name."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Already wrote a name, expecting a value."

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzm:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 21
    .line 22
    const-string v1, "null"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public zzh(D)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 5
    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Numeric values must be finite, but was "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 47
    .line 48
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public zzi(J)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public zzj(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq v1, p1, :cond_1

    .line 21
    .line 22
    const-string p1, "false"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p1, "true"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public zzk(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class v1, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eq p1, v1, :cond_6

    .line 21
    .line 22
    const-class v1, Ljava/lang/Long;

    .line 23
    .line 24
    if-eq p1, v1, :cond_6

    .line 25
    .line 26
    const-class v1, Ljava/lang/Byte;

    .line 27
    .line 28
    if-eq p1, v1, :cond_6

    .line 29
    .line 30
    const-class v1, Ljava/lang/Short;

    .line 31
    .line 32
    if-eq p1, v1, :cond_6

    .line 33
    .line 34
    const-class v1, Ljava/math/BigDecimal;

    .line 35
    .line 36
    if-eq p1, v1, :cond_6

    .line 37
    .line 38
    const-class v1, Ljava/math/BigInteger;

    .line 39
    .line 40
    if-eq p1, v1, :cond_6

    .line 41
    .line 42
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    if-eq p1, v1, :cond_6

    .line 45
    .line 46
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    .line 48
    if-ne p1, v1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v1, "-Infinity"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    const-string v1, "Infinity"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    const-string v1, "NaN"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-class v1, Ljava/lang/Float;

    .line 77
    .line 78
    if-eq p1, v1, :cond_6

    .line 79
    .line 80
    const-class v1, Ljava/lang/Double;

    .line 81
    .line 82
    if-eq p1, v1, :cond_6

    .line 83
    .line 84
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v2, "String created by "

    .line 104
    .line 105
    const-string v3, " is not a valid JSON number: "

    .line 106
    .line 107
    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 116
    .line 117
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 118
    .line 119
    if-ne p1, v1, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string v1, "Numeric values must be finite, but was "

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public zzl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzB(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public zzm(Z)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzC()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzx()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const-string p1, "false"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "true"

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Ljava/io/Writer;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final zzn()Lcom/google/ads/interactivemedia/v3/internal/zzwg;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    return-object v0
.end method

.method public final zzo(Lcom/google/ads/interactivemedia/v3/internal/zzvl;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 5
    .line 6
    const-string v0, ","

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzi:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zzc()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, ": "

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzh:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zzb()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p1, ", "

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzi:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, ":"

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzh:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zzb()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zza()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :cond_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzj:Z

    .line 68
    .line 69
    return-void
.end method

.method public final zzp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzl:Z

    return-void
.end method

.method public final zzq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn:Z

    return-void
.end method

.method public final zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 5
    .line 6
    return-void
.end method

.method public final zzs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn:Z

    return v0
.end method

.method public final zzt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzl:Z

    return v0
.end method

.method public final zzu()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
