.class public final Lcom/google/android/gms/internal/ads/Nm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/N9;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/Nm;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nm;->H:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Nm;->I:Lcom/google/android/gms/internal/ads/N9;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nm;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nm;->I:Lcom/google/android/gms/internal/ads/N9;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nm;->H:Ljava/lang/String;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 11
    .line 12
    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->D0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 17
    .line 18
    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
