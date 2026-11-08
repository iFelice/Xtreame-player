.class public final Lz4/r;
.super Lcom/google/android/gms/internal/ads/hA;
.source "SourceFile"


# instance fields
.field public final synthetic L:I


# direct methods
.method public synthetic constructor <init>(Lz4/t;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/r;->L:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hA;-><init>(Lz4/t;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lz4/r;->L:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :pswitch_0
    new-instance v0, Lz4/s;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lz4/s;-><init>(Lz4/t;I)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_1
    const/4 p1, 0x0

    .line 16
    throw p1

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
