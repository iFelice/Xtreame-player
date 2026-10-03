.class public final synthetic Lcom/google/android/gms/internal/ads/pL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dL;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/dK;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/pL;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pL;->H:Lcom/google/android/gms/internal/ads/p0;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/pL;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pL;->H:Lcom/google/android/gms/internal/ads/p0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 9
    .line 10
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/eL;->k(Lcom/google/android/gms/internal/ads/p0;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/eL;->a(Lcom/google/android/gms/internal/ads/p0;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
