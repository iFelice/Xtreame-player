.class public final Lcom/google/ads/interactivemedia/v3/internal/zzyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzwk;


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwk;


# instance fields
.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

.field private final zzd:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzyv;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyw;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzyv;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    .line 13
    return-void
.end method

.method private final zzd(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    return-object p2
.end method

.method private static zze(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzwl;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 8
    .line 9
    return-object p0
.end method

.method private static zzf(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zza(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzya;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzya;->zza()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zze(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v1, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwl;Z)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwl;Z)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 8

    .line 1
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzwl;->zza()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 10
    .line 11
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzwl;->zzb()Z

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_0
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 21
    .line 22
    if-eqz p4, :cond_2

    .line 23
    .line 24
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-direct {p0, p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzd(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzwk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_4

    .line 41
    :cond_2
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-nez p4, :cond_4

    .line 45
    .line 46
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 47
    .line 48
    if-eqz p4, :cond_3

    .line 49
    .line 50
    move-object v2, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const-string p4, "Invalid attempt to bind an instance of "

    .line 67
    .line 68
    const-string p5, " as a @JsonAdapter for "

    .line 69
    .line 70
    const-string v0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    .line 71
    .line 72
    invoke-static {p4, p1, p5, p3, v0}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_4
    move-object p4, p1

    .line 81
    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 82
    .line 83
    move-object v2, p4

    .line 84
    :goto_0
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 85
    .line 86
    if-eqz p4, :cond_5

    .line 87
    .line 88
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 89
    .line 90
    move-object v3, p1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move-object v3, v0

    .line 93
    :goto_1
    if-eqz p5, :cond_6

    .line 94
    .line 95
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 96
    .line 97
    :goto_2
    move-object v6, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzzv;

    .line 103
    .line 104
    move-object v1, p1

    .line 105
    move-object v4, p2

    .line 106
    move-object v5, p3

    .line 107
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzzv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwd;Lcom/google/ads/interactivemedia/v3/internal/zzvv;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwk;Z)V

    .line 108
    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_4
    if-eqz p1, :cond_7

    .line 112
    .line 113
    if-eqz v7, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :cond_7
    return-object p1
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-ne v0, p2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    return v2

    .line 32
    :cond_2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zze(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzwl;->zza()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-class v3, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 53
    .line 54
    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 59
    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzd(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, p2, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    return v2
.end method
