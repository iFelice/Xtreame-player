.class public final Lcom/google/android/gms/internal/ads/Ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:I

.field public final synthetic J:Lcom/google/android/gms/internal/ads/De;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/De;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/Ae;->G:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ae;->H:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/Ae;->I:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ae;->J:Lcom/google/android/gms/internal/ads/De;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ae;->G:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ae;->I:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ae;->H:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ae;->J:Lcom/google/android/gms/internal/ads/De;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/We;

    .line 13
    .line 14
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Ge;->j(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    check-cast v3, Lcom/google/android/gms/internal/ads/Be;

    .line 25
    .line 26
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Be;->V:Lcom/google/android/gms/internal/ads/Ce;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Ge;->j(II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
