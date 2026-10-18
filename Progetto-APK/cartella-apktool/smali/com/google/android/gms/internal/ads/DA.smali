.class public final Lcom/google/android/gms/internal/ads/DA;
.super Lcom/google/android/gms/internal/ads/fB;
.source "SourceFile"


# instance fields
.field public final synthetic H:I

.field public final synthetic I:Ljava/util/AbstractList;


# direct methods
.method public constructor <init>(Ljava/util/AbstractList;Ljava/util/ListIterator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/ads/DA;->H:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DA;->I:Ljava/util/AbstractList;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/eB;-><init>(Ljava/util/Iterator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->H:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DA;->I:Ljava/util/AbstractList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/FA;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/FA;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/vz;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/ads/EA;

    .line 20
    .line 21
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/EA;->I:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/vz;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
