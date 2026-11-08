.class public final synthetic Lcom/google/android/gms/internal/ads/Qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ij;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/content/Context;

.field public final synthetic I:Lp3/a;

.field public final synthetic J:Lcom/google/android/gms/internal/ads/Ov;

.field public final synthetic K:Lcom/google/android/gms/internal/ads/Yv;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Yv;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/google/android/gms/internal/ads/Qh;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qh;->H:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qh;->I:Lp3/a;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Qh;->J:Lcom/google/android/gms/internal/ads/Ov;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Qh;->K:Lcom/google/android/gms/internal/ads/Yv;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qh;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qh;->H:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qh;->K:Lcom/google/android/gms/internal/ads/Yv;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qh;->I:Lp3/a;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Qh;->J:Lcom/google/android/gms/internal/ads/Ov;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 15
    .line 16
    iget-object v0, v0, Lk3/l;->m:Lo3/l;

    .line 17
    .line 18
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ov;->C:Lorg/json/JSONObject;

    .line 19
    .line 20
    iget-object v3, v3, Lp3/a;->G:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3, v4, v2}, Lo3/l;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 33
    .line 34
    iget-object v0, v0, Lk3/l;->m:Lo3/l;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ov;->C:Lorg/json/JSONObject;

    .line 37
    .line 38
    iget-object v3, v3, Lp3/a;->G:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v3, v4, v2}, Lo3/l;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
