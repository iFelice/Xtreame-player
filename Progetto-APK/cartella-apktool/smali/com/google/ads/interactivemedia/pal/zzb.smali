.class final Lcom/google/ads/interactivemedia/pal/zzb;
.super Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/Boolean;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/pal/ConsentSettings;Lcom/google/ads/interactivemedia/pal/zza;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zzc()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zza:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zza()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zzb()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzc:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final allowStorage(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzb:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null allowStorage"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final build()Lcom/google/ads/interactivemedia/pal/ConsentSettings;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzb:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzc:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzd;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zza:Ljava/lang/Boolean;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/ads/interactivemedia/pal/zzd;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/ads/interactivemedia/pal/zzc;)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzb:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const-string v1, " allowStorage"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzc:Ljava/lang/Boolean;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, " directedForChildOrUnknownAge"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v2, "Missing required properties:"

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final directedForChildOrUnknownAge(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zzc:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null directedForChildOrUnknownAge"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final enableCookiesFor3pServerSideAdInsertion(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzb;->zza:Ljava/lang/Boolean;

    return-object p0
.end method
