.class public final Lcom/google/ads/interactivemedia/v3/internal/zzzv;
.super Lcom/google/ads/interactivemedia/v3/internal/zzzr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzzr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzzt;

.field private final zzg:Z

.field private volatile zzh:Lcom/google/ads/interactivemedia/v3/internal/zzwj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzwd;Lcom/google/ads/interactivemedia/v3/internal/zzvv;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwk;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzr;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzzt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzzt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzzv;Lcom/google/ads/interactivemedia/v3/internal/zzzs;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzzt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzg:Z

    return-void
.end method

.method public static zzb(Lcom/google/ads/interactivemedia/v3/internal/zzaca;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzzu;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzzu;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaca;ZLjava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwk;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzacc;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyg;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Lcom/google/ads/interactivemedia/v3/internal/zzvw;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzg:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzvy;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvv;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvv;->zza()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzace;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzg:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzzt;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwd;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzwc;)Lcom/google/ads/interactivemedia/v3/internal/zzvw;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzV:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 36
    .line 37
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaaq;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaq;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzace;Lcom/google/ads/interactivemedia/v3/internal/zzvw;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzv;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
