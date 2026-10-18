.class public final Lcom/google/android/gms/internal/ads/eA;
.super Lcom/google/android/gms/internal/ads/hA;
.source "SourceFile"


# instance fields
.field public final synthetic L:I

.field public final synthetic M:Lcom/google/android/gms/internal/ads/jA;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/jA;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/eA;->L:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eA;->M:Lcom/google/android/gms/internal/ads/jA;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hA;-><init>(Lcom/google/android/gms/internal/ads/jA;)V

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/eA;->L:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eA;->M:Lcom/google/android/gms/internal/ads/jA;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/jA;->P:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jA;->c()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/iA;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/iA;-><init>(Lcom/google/android/gms/internal/ads/jA;I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/jA;->P:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jA;->b()[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    aget-object p1, v0, p1

    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
