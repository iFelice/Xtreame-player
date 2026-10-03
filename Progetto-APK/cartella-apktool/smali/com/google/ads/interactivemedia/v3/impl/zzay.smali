.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzay;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzg()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
