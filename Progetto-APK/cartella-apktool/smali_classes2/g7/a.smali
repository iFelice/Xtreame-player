.class public final synthetic Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/n;
.implements Lr2/m;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/i6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/i6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg7/a;->a:Lcom/google/android/gms/internal/ads/i6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lg7/a;->a:Lcom/google/android/gms/internal/ads/i6;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lg7/c;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Lg7/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lg7/c;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Lg7/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lr2/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg7/a;->a:Lcom/google/android/gms/internal/ads/i6;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/i6;->a(Lr2/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
