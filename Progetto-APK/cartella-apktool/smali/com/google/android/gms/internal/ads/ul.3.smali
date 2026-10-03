.class public final Lcom/google/android/gms/internal/ads/ul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/x;->G:I

    .line 4
    .line 5
    sparse-switch v1, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :sswitch_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/dm;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dm;->zzp()Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :sswitch_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/json/JSONObject;

    .line 22
    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
