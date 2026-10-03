.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zzb:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zzb:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzi;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    return-void
.end method
