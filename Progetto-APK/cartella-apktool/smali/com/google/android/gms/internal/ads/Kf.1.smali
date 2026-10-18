.class public final synthetic Lcom/google/android/gms/internal/ads/Kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/QB;


# instance fields
.field public final synthetic G:Landroid/content/Context;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/H4;

.field public final synthetic I:Lp3/a;

.field public final synthetic J:Lk3/a;

.field public final synthetic K:Lcom/google/android/gms/internal/ads/hq;

.field public final synthetic L:Lcom/google/android/gms/internal/ads/Zv;

.field public final synthetic M:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/H4;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Zv;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kf;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Kf;->H:Lcom/google/android/gms/internal/ads/H4;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Kf;->I:Lp3/a;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Kf;->J:Lk3/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Kf;->K:Lcom/google/android/gms/internal/ads/hq;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Kf;->L:Lcom/google/android/gms/internal/ads/Zv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Kf;->M:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()LD4/b;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 4
    .line 5
    iget-object v1, v1, Lk3/l;->d:Lcom/google/android/gms/internal/ads/y1;

    .line 6
    .line 7
    new-instance v3, LA2/i;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v15, 0x0

    .line 11
    invoke-direct {v3, v15, v15, v15, v1}, LA2/i;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    new-instance v8, Lcom/google/android/gms/internal/ads/w6;

    .line 15
    .line 16
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/w6;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Kf;->G:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Kf;->I:Lp3/a;

    .line 25
    .line 26
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Kf;->J:Lk3/a;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Kf;->H:Lcom/google/android/gms/internal/ads/H4;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Kf;->K:Lcom/google/android/gms/internal/ads/hq;

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Kf;->L:Lcom/google/android/gms/internal/ads/Zv;

    .line 37
    .line 38
    const-string v14, ""

    .line 39
    .line 40
    move v15, v1

    .line 41
    invoke-static/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/y1;->e(Landroid/content/Context;LA2/i;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/Of;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/w6;Lcom/google/android/gms/internal/ads/e8;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Lcom/google/android/gms/internal/ads/Zv;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Ef;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/google/android/gms/internal/ads/q6;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/q6;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Lcom/google/android/gms/internal/ads/Jf;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/ads/Jf;-><init>(Lcom/google/android/gms/internal/ads/q6;I)V

    .line 58
    .line 59
    .line 60
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/Xf;->M:Lcom/google/android/gms/internal/ads/cg;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Kf;->M:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/Ef;->loadUrl(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2
.end method
