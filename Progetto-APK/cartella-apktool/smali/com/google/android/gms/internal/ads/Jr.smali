.class public final synthetic Lcom/google/android/gms/internal/ads/Jr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ew;
.implements Lcom/google/android/gms/internal/ads/Dw;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/Kr;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Tv;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/Ov;

.field public final synthetic J:Lcom/google/android/gms/internal/ads/sq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jr;->G:Lcom/google/android/gms/internal/ads/Kr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jr;->H:Lcom/google/android/gms/internal/ads/Tv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jr;->I:Lcom/google/android/gms/internal/ads/Ov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Jr;->J:Lcom/google/android/gms/internal/ads/sq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jr;->G:Lcom/google/android/gms/internal/ads/Kr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kr;->b:Lcom/google/android/gms/internal/ads/vq;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jr;->I:Lcom/google/android/gms/internal/ads/Ov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jr;->J:Lcom/google/android/gms/internal/ads/sq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jr;->H:Lcom/google/android/gms/internal/ads/Tv;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/vq;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jr;->G:Lcom/google/android/gms/internal/ads/Kr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Kr;->b:Lcom/google/android/gms/internal/ads/vq;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jr;->H:Lcom/google/android/gms/internal/ads/Tv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jr;->I:Lcom/google/android/gms/internal/ads/Ov;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Jr;->J:Lcom/google/android/gms/internal/ads/sq;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vq;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V

    return-void
.end method
