.class public Lcom/google/ads/interactivemedia/v3/internal/zzadu;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzady<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzadu<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/ads/interactivemedia/v3/internal/zzacg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzady;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacg;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaB()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Default instance must be immutable."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzai()Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic zzaS()Lcom/google/ads/interactivemedia/v3/internal/zzafb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaT()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaO(Lcom/google/ads/interactivemedia/v3/internal/zzady;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final bridge synthetic zzah()Lcom/google/ads/interactivemedia/v3/internal/zzacg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzai()Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzai()Lcom/google/ads/interactivemedia/v3/internal/zzadu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzam()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 16
    .line 17
    return-object v0
.end method

.method public final zzaj(Lcom/google/ads/interactivemedia/v3/internal/zzady;)Lcom/google/ads/interactivemedia/v3/internal/zzadu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzaq()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object p0
.end method

.method public final zzak([BIILcom/google/ads/interactivemedia/v3/internal/zzadk;)Lcom/google/ads/interactivemedia/v3/internal/zzadu;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzaq()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafi;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafi;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 27
    .line 28
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzacl;

    .line 29
    .line 30
    invoke-direct {v6, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzacl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzadk;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v3, p1

    .line 35
    move v5, p3

    .line 36
    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;->zzi(Ljava/lang/Object;[BIILcom/google/ads/interactivemedia/v3/internal/zzacl;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzaeg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    const-string p3, "Reading from byte array should not throw IOException."

    .line 47
    .line 48
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :catch_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzaeg;

    .line 53
    .line 54
    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaeg;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :goto_1
    throw p1
.end method

.method public final zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzam()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaO(Lcom/google/ads/interactivemedia/v3/internal/zzady;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzagg;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafb;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public zzam()Lcom/google/ads/interactivemedia/v3/internal/zzady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaK()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 18
    .line 19
    return-object v0
.end method

.method public bridge synthetic zzan()Lcom/google/ads/interactivemedia/v3/internal/zzafb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzam()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaP()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzaq()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public zzaq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaB()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 13
    .line 14
    return-void
.end method
