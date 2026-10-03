.class public final synthetic Lcom/google/ads/interactivemedia/pal/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/pal/NonceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzar;->zza:Lcom/google/ads/interactivemedia/pal/NonceManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzar;->zza:Lcom/google/ads/interactivemedia/pal/NonceManager;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzh(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    return-void
.end method
