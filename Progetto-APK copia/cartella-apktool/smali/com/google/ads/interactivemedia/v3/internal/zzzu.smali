.class final Lcom/google/ads/interactivemedia/v3/internal/zzzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzwk;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

.field private final zzb:Z

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvv;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaca;ZLjava/lang/Class;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of p4, p1, Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    move-object p4, p1

    .line 10
    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p4, v0

    .line 14
    :goto_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 15
    .line 16
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 22
    .line 23
    :cond_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-nez p4, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza(Z)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 36
    .line 37
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzb:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzb:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzu;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 31
    .line 32
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzzv;

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    move-object v0, v7

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p0

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzzv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwd;Lcom/google/ads/interactivemedia/v3/internal/zzvv;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwk;Z)V

    .line 40
    .line 41
    .line 42
    return-object v7
.end method
