.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzvd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzvd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;->zzc(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
