.class public final synthetic Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/io/Serializable;

.field public final synthetic K:Ljava/lang/Object;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf3/f;Lcom/google/android/gms/internal/ads/to;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh3/a;->G:I

    .line 3
    iput-object p1, p0, Lh3/a;->I:Ljava/lang/Object;

    iput-object p2, p0, Lh3/a;->J:Ljava/io/Serializable;

    iput-object p3, p0, Lh3/a;->K:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lh3/a;->H:I

    iput-object p4, p0, Lh3/a;->L:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/V;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lh3/a;->G:I

    .line 6
    iput-object p1, p0, Lh3/a;->I:Ljava/lang/Object;

    iput p2, p0, Lh3/a;->H:I

    iput-object p3, p0, Lh3/a;->J:Ljava/io/Serializable;

    iput-object p4, p0, Lh3/a;->K:Ljava/lang/Object;

    iput-object p5, p0, Lh3/a;->L:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lh3/a;->G:I

    .line 4
    .line 5
    iget-object v2, v1, Lh3/a;->L:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, Lh3/a;->K:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v1, Lh3/a;->J:Ljava/io/Serializable;

    .line 10
    .line 11
    iget-object v5, v1, Lh3/a;->I:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Lc4/V;

    .line 17
    .line 18
    move-object v9, v4

    .line 19
    check-cast v9, Ljava/lang/Exception;

    .line 20
    .line 21
    move-object v10, v3

    .line 22
    check-cast v10, [B

    .line 23
    .line 24
    move-object v11, v2

    .line 25
    check-cast v11, Ljava/util/Map;

    .line 26
    .line 27
    iget-object v0, v5, Lc4/V;->L:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v6, v0

    .line 30
    check-cast v6, Lc4/M0;

    .line 31
    .line 32
    iget-object v7, v5, Lc4/V;->J:Ljava/lang/String;

    .line 33
    .line 34
    iget v8, v1, Lh3/a;->H:I

    .line 35
    .line 36
    invoke-interface/range {v6 .. v11}, Lc4/M0;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    check-cast v5, Landroid/content/Context;

    .line 41
    .line 42
    iget v0, v1, Lh3/a;->H:I

    .line 43
    .line 44
    move-object v14, v4

    .line 45
    check-cast v14, Ljava/lang/String;

    .line 46
    .line 47
    check-cast v3, Lf3/f;

    .line 48
    .line 49
    move-object/from16 v17, v2

    .line 50
    .line 51
    check-cast v17, Lcom/google/android/gms/internal/ads/to;

    .line 52
    .line 53
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/i6;

    .line 54
    .line 55
    iget-object v15, v3, Lf3/f;->a:Ll3/G0;

    .line 56
    .line 57
    move-object v12, v2

    .line 58
    move-object v13, v5

    .line 59
    move/from16 v16, v0

    .line 60
    .line 61
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/i6;-><init>(Landroid/content/Context;Ljava/lang/String;Ll3/G0;ILcom/google/android/gms/internal/ads/to;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i6;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "AppOpenAd.load"

    .line 74
    .line 75
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
