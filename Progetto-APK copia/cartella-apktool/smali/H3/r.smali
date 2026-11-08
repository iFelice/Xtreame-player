.class public final LH3/r;
.super Lcom/google/android/gms/common/api/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LH3/r;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;LK3/e;LK3/l;)Lcom/google/android/gms/common/api/e;
    .locals 13

    .line 1
    move-object v0, p0

    iget v1, v0, LH3/r;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/common/api/a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;LK3/e;LK3/l;)Lcom/google/android/gms/common/api/e;

    move-result-object v1

    return-object v1

    .line 2
    :pswitch_0
    move-object/from16 v1, p4

    check-cast v1, Lcom/google/android/gms/common/api/b;

    .line 3
    new-instance v1, LW3/b;

    const/16 v5, 0x12c

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 4
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/i;LK3/e;LK3/l;)V

    return-object v1

    .line 5
    :pswitch_1
    move-object/from16 v10, p4

    check-cast v10, Lcom/google/android/gms/common/internal/v;

    .line 6
    new-instance v1, LN3/c;

    move-object v6, v1

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, LN3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/v;LK3/e;LK3/l;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/e;
    .locals 13

    .line 7
    move-object/from16 v4, p3

    move-object v11, p0

    iget v0, v11, LH3/r;->a:I

    const-string v1, "Setting the API options is required."

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8
    :pswitch_0
    invoke-virtual/range {p0 .. p6}, LH3/r;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;LK3/e;LK3/l;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_1
    move-object/from16 v0, p4

    check-cast v0, Lcom/google/android/gms/common/api/c;

    invoke-static {v0}, LA0/O;->H(Lcom/google/android/gms/common/api/c;)V

    .line 10
    throw v2

    .line 11
    :pswitch_2
    move-object/from16 v0, p4

    check-cast v0, Le4/a;

    .line 12
    new-instance v7, Lf4/a;

    .line 13
    iget-object v0, v4, Lcom/google/android/gms/common/internal/i;->i:Ljava/lang/Integer;

    .line 14
    new-instance v5, Landroid/os/Bundle;

    .line 15
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    iget-object v3, v4, Lcom/google/android/gms/common/internal/i;->a:Landroid/accounts/Account;

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 19
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 22
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 23
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    .line 24
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 25
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 26
    invoke-direct/range {v0 .. v6}, Lf4/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Landroid/os/Bundle;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)V

    return-object v7

    .line 27
    :pswitch_3
    move-object/from16 v0, p4

    check-cast v0, Lcom/google/android/gms/common/api/b;

    .line 28
    new-instance v7, Lcom/google/android/gms/internal/pal/u2;

    const/16 v3, 0xcb

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/i;LK3/e;LK3/l;)V

    return-object v7

    .line 30
    :pswitch_4
    move-object/from16 v0, p4

    check-cast v0, LC3/e;

    .line 31
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v12, LH3/x;

    iget v1, v0, LC3/e;->e:I

    int-to-long v5, v1

    iget-object v7, v0, LC3/e;->b:Lcom/google/android/gms/cast/CastDevice;

    iget-object v8, v0, LC3/e;->c:LD3/I;

    iget-object v9, v0, LC3/e;->d:Landroid/os/Bundle;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, LH3/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/cast/CastDevice;JLD3/I;Landroid/os/Bundle;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)V

    return-object v12

    .line 33
    :pswitch_5
    move-object/from16 v0, p4

    check-cast v0, LC3/e;

    .line 34
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v12, LH3/y;

    iget v1, v0, LC3/e;->e:I

    int-to-long v5, v1

    iget-object v7, v0, LC3/e;->b:Lcom/google/android/gms/cast/CastDevice;

    iget-object v8, v0, LC3/e;->d:Landroid/os/Bundle;

    iget-object v9, v0, LC3/e;->f:Ljava/lang/String;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, LH3/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/cast/CastDevice;JLandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)V

    return-object v12

    .line 36
    :pswitch_6
    move-object/from16 v0, p4

    check-cast v0, Lcom/google/android/gms/common/api/b;

    .line 37
    new-instance v7, LH3/u;

    const/16 v3, 0xa1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/i;LK3/e;LK3/l;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
