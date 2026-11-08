.class public final synthetic Lcom/google/android/gms/internal/ads/KK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xN;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/QK;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/QK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KK;->a:Lcom/google/android/gms/internal/ads/QK;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eN;Lcom/google/android/gms/internal/ads/Ie;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KK;->a:Lcom/google/android/gms/internal/ads/QK;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/QK;->e:Lcom/google/android/gms/internal/ads/PK;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/BK;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    const/16 p2, 0x16

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ts;->c(I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
