.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzach;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzafb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzach<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzacg<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/zzafb;"
    }
.end annotation


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzach;->zza:I

    return-void
.end method


# virtual methods
.method public zzat(Lcom/google/ads/interactivemedia/v3/internal/zzaft;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacw;
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzafb;->zzax()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzacw;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzadc;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadc;-><init>([BII)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzafb;->zzaR(Lcom/google/ads/interactivemedia/v3/internal/zzadf;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadf;->zzB()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacv;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacv;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "Serializing "

    .line 39
    .line 40
    const-string v4, " to a ByteString threw an IOException (should never happen)."

    .line 41
    .line 42
    invoke-static {v3, v1, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v2
.end method

.method public final zzav()[B
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzafb;->zzax()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzadc;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadc;-><init>([BII)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzafb;->zzaR(Lcom/google/ads/interactivemedia/v3/internal/zzadf;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadf;->zzB()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "Serializing "

    .line 32
    .line 33
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 34
    .line 35
    invoke-static {v3, v1, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v2
.end method
