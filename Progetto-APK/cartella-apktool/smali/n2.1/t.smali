.class public final Ln2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;

.field public final K:Ljava/lang/Object;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW4/a;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 11
    iput v0, p0, Ln2/t;->G:I

    .line 12
    iput-object p1, p0, Ln2/t;->L:Ljava/lang/Object;

    .line 13
    iget-object v0, p1, LW4/a;->J:Ljava/lang/Object;

    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    const v1, 0x7f0b03c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ln2/t;->J:Ljava/lang/Object;

    .line 14
    iget-object p1, p1, LW4/a;->J:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ln2/t;->K:Ljava/lang/Object;

    .line 15
    check-cast p1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    const v0, 0x7f0b059b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ln2/t;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lf3/f;Lx3/a;)V
    .locals 2

    .line 1
    sget-object v0, Lf3/a;->H:Lf3/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Ln2/t;->G:I

    .line 4
    iput-object p1, p0, Ln2/t;->H:Ljava/lang/Object;

    iput-object v0, p0, Ln2/t;->I:Ljava/lang/Object;

    iput-object p2, p0, Ln2/t;->J:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Ln2/t;->K:Ljava/lang/Object;

    iput-object p3, p0, Ln2/t;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/d1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc4/J1;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Ln2/t;->G:I

    .line 7
    iput-object p2, p0, Ln2/t;->I:Ljava/lang/Object;

    iput-object p3, p0, Ln2/t;->J:Ljava/lang/Object;

    iput-object p4, p0, Ln2/t;->K:Ljava/lang/Object;

    iput-object p5, p0, Ln2/t;->H:Ljava/lang/Object;

    iput-object p1, p0, Ln2/t;->L:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Ln2/t;->G:I

    iput-object p1, p0, Ln2/t;->L:Ljava/lang/Object;

    iput-object p2, p0, Ln2/t;->I:Ljava/lang/Object;

    iput-object p3, p0, Ln2/t;->J:Ljava/lang/Object;

    iput-object p4, p0, Ln2/t;->K:Ljava/lang/Object;

    iput-object p5, p0, Ln2/t;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Ln2/t;->G:I

    iput-object p1, p0, Ln2/t;->I:Ljava/lang/Object;

    iput-object p2, p0, Ln2/t;->J:Ljava/lang/Object;

    iput-object p3, p0, Ln2/t;->K:Ljava/lang/Object;

    iput-object p4, p0, Ln2/t;->H:Ljava/lang/Object;

    iput-object p5, p0, Ln2/t;->L:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln2/t;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Ln2/t;->L:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lc4/d1;

    .line 10
    .line 11
    iget-object v3, v2, Lc4/d1;->J:Lc4/G;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lc4/l0;

    .line 18
    .line 19
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 25
    .line 26
    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 27
    .line 28
    iget-object v4, p0, Ln2/t;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Ln2/t;->K:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v4, v5, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_5

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    goto :goto_4

    .line 55
    :catch_0
    move-exception v2

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    iget-object v4, p0, Ln2/t;->H:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lc4/J1;

    .line 66
    .line 67
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Ln2/t;->J:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, p0, Ln2/t;->K:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v3, v5, v6, v4}, Lc4/G;->d0(Ljava/lang/String;Ljava/lang/String;Lc4/J1;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, p0, Ln2/t;->J:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    iget-object v5, p0, Ln2/t;->K:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v5, Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v3, v1, v4, v5}, Lc4/G;->Z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_3
    iget-object v1, p0, Ln2/t;->I:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    .line 108
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_2
    :try_start_4
    iget-object v3, p0, Ln2/t;->L:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, Lc4/d1;

    .line 115
    .line 116
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Lc4/l0;

    .line 119
    .line 120
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 121
    .line 122
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 126
    .line 127
    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 128
    .line 129
    iget-object v5, p0, Ln2/t;->J:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v5, Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v3, v1, v5, v2, v4}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Ln2/t;->I:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    .line 146
    .line 147
    :try_start_5
    iget-object v1, p0, Ln2/t;->I:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :goto_3
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :goto_4
    iget-object v2, p0, Ln2/t;->I:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 34

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Ln2/t;->G:I

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    const/4 v10, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LW4/a;

    .line 13
    .line 14
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 17
    .line 18
    new-instance v2, Lk7/g;

    .line 19
    .line 20
    invoke-direct {v2, v7, v8}, Lk7/g;-><init>(Ln2/t;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x258

    .line 27
    .line 28
    :cond_0
    iget-object v2, v0, LW4/a;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 31
    .line 32
    iget-object v2, v2, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 33
    .line 34
    iget-boolean v3, v2, Lk7/j;->K:Z

    .line 35
    .line 36
    const/4 v11, 0x2

    .line 37
    const-wide/16 v12, 0x64

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    nop

    .line 48
    :goto_0
    if-gtz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 53
    .line 54
    new-instance v2, Lk7/g;

    .line 55
    .line 56
    invoke-direct {v2, v7, v11}, Lk7/g;-><init>(Ln2/t;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 65
    .line 66
    iput-object v10, v0, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 67
    .line 68
    goto/16 :goto_f

    .line 69
    .line 70
    :cond_1
    iget-object v1, v2, Lk7/j;->G:Ljava/util/HashMap;

    .line 71
    .line 72
    iget-object v3, v2, Lk7/j;->H:Ljava/util/HashMap;

    .line 73
    .line 74
    iget-wide v4, v2, Lk7/j;->I:D

    .line 75
    .line 76
    iget-wide v14, v2, Lk7/j;->J:D

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-wide v16, 0x417273fd20000000L    # 1.9349458E7

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    const-wide/16 v10, 0x0

    .line 93
    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v20

    .line 98
    if-eqz v20, :cond_4

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v20

    .line 104
    move-object/from16 v12, v20

    .line 105
    .line 106
    check-cast v12, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    iget-object v8, v0, LW4/a;->J:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v8, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 115
    .line 116
    iget-object v8, v8, Lpe/hf/black20/speedtest/SpeedTestActivity;->I:Ljava/util/HashSet;

    .line 117
    .line 118
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v23

    .line 122
    move-object/from16 v9, v23

    .line 123
    .line 124
    check-cast v9, Ljava/util/List;

    .line 125
    .line 126
    move-object/from16 v23, v2

    .line 127
    .line 128
    const/4 v2, 0x5

    .line 129
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    move-object/from16 v2, v23

    .line 140
    .line 141
    :goto_2
    const/4 v8, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    new-instance v2, Landroid/location/Location;

    .line 144
    .line 145
    const-string v8, "Source"

    .line 146
    .line 147
    invoke-direct {v2, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Ljava/util/List;

    .line 161
    .line 162
    new-instance v9, Landroid/location/Location;

    .line 163
    .line 164
    const-string v12, "Dest"

    .line 165
    .line 166
    invoke-direct {v9, v12}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v12, 0x0

    .line 170
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v24

    .line 174
    check-cast v24, Ljava/lang/String;

    .line 175
    .line 176
    move-wide/from16 v25, v4

    .line 177
    .line 178
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    invoke-virtual {v9, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 183
    .line 184
    .line 185
    const/4 v4, 0x1

    .line 186
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    invoke-virtual {v9, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v9}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    float-to-double v4, v2

    .line 204
    cmpl-double v2, v16, v4

    .line 205
    .line 206
    if-lez v2, :cond_3

    .line 207
    .line 208
    move-wide v10, v4

    .line 209
    move-wide/from16 v16, v10

    .line 210
    .line 211
    move v6, v13

    .line 212
    :cond_3
    move-object/from16 v2, v23

    .line 213
    .line 214
    move-wide/from16 v4, v25

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    move-object v8, v1

    .line 226
    check-cast v8, Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    move-object v9, v1

    .line 237
    check-cast v9, Ljava/util/List;

    .line 238
    .line 239
    if-nez v9, :cond_5

    .line 240
    .line 241
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 244
    .line 245
    new-instance v1, Lk7/g;

    .line 246
    .line 247
    const/4 v2, 0x3

    .line 248
    invoke-direct {v1, v7, v2}, Lk7/g;-><init>(Ln2/t;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_f

    .line 255
    .line 256
    :cond_5
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 259
    .line 260
    new-instance v2, Lk7/h;

    .line 261
    .line 262
    invoke-direct {v2, v7, v9, v10, v11}, Lk7/h;-><init>(Ln2/t;Ljava/util/List;D)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 271
    .line 272
    const v2, 0x7f0b016e

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    move-object v10, v1

    .line 280
    check-cast v10, Landroid/widget/LinearLayout;

    .line 281
    .line 282
    new-instance v1, LV6/d;

    .line 283
    .line 284
    invoke-direct {v1}, LV6/d;-><init>()V

    .line 285
    .line 286
    .line 287
    new-instance v2, LV6/c;

    .line 288
    .line 289
    invoke-direct {v2}, LV6/c;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v3, "#ffffff"

    .line 293
    .line 294
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iput v4, v2, LV6/c;->H:I

    .line 299
    .line 300
    iget-object v4, v1, LV6/d;->J:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    const/4 v2, 0x0

    .line 306
    iput-boolean v2, v1, LV6/d;->N:Z

    .line 307
    .line 308
    iput-boolean v2, v1, LV6/d;->H:Z

    .line 309
    .line 310
    const-string v2, "#1bfa08"

    .line 311
    .line 312
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    iput v4, v1, LV6/d;->G:I

    .line 317
    .line 318
    const/high16 v4, 0x40a00000    # 5.0f

    .line 319
    .line 320
    iput v4, v1, LV6/d;->M:F

    .line 321
    .line 322
    new-instance v11, LV6/b;

    .line 323
    .line 324
    invoke-direct {v11}, LV6/b;-><init>()V

    .line 325
    .line 326
    .line 327
    const/4 v5, 0x0

    .line 328
    iput v5, v11, LV6/b;->h0:I

    .line 329
    .line 330
    iput v5, v11, LV6/b;->i0:I

    .line 331
    .line 332
    const-string v5, "#647488"

    .line 333
    .line 334
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    iput v6, v11, LV6/a;->J:I

    .line 339
    .line 340
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    iput v6, v11, LV6/a;->I:I

    .line 345
    .line 346
    const/4 v6, 0x1

    .line 347
    iput-boolean v6, v11, LV6/b;->l0:Z

    .line 348
    .line 349
    iput-boolean v6, v11, LV6/b;->m0:Z

    .line 350
    .line 351
    const/4 v6, 0x0

    .line 352
    iput-boolean v6, v11, LV6/a;->W:Z

    .line 353
    .line 354
    const/16 v12, 0xff

    .line 355
    .line 356
    invoke-static {v6, v12, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    iput v13, v11, LV6/b;->p0:I

    .line 361
    .line 362
    iget-object v6, v11, LV6/a;->T:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 370
    .line 371
    const v6, 0x7f0b016d

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move-object v13, v1

    .line 379
    check-cast v13, Landroid/widget/LinearLayout;

    .line 380
    .line 381
    new-instance v1, LV6/d;

    .line 382
    .line 383
    invoke-direct {v1}, LV6/d;-><init>()V

    .line 384
    .line 385
    .line 386
    new-instance v6, LV6/c;

    .line 387
    .line 388
    invoke-direct {v6}, LV6/c;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v14

    .line 395
    iput v14, v6, LV6/c;->H:I

    .line 396
    .line 397
    iget-object v14, v1, LV6/d;->J:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    const/4 v6, 0x0

    .line 403
    iput-boolean v6, v1, LV6/d;->N:Z

    .line 404
    .line 405
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    iput v14, v1, LV6/d;->G:I

    .line 410
    .line 411
    iput-boolean v6, v1, LV6/d;->H:Z

    .line 412
    .line 413
    iput v4, v1, LV6/d;->M:F

    .line 414
    .line 415
    new-instance v14, LV6/b;

    .line 416
    .line 417
    invoke-direct {v14}, LV6/b;-><init>()V

    .line 418
    .line 419
    .line 420
    iput v6, v14, LV6/b;->h0:I

    .line 421
    .line 422
    iput v6, v14, LV6/b;->i0:I

    .line 423
    .line 424
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v15

    .line 428
    iput v15, v14, LV6/a;->J:I

    .line 429
    .line 430
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v15

    .line 434
    iput v15, v14, LV6/a;->I:I

    .line 435
    .line 436
    iput-boolean v6, v14, LV6/b;->l0:Z

    .line 437
    .line 438
    iput-boolean v6, v14, LV6/b;->m0:Z

    .line 439
    .line 440
    iput-boolean v6, v14, LV6/a;->W:Z

    .line 441
    .line 442
    invoke-static {v6, v12, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 443
    .line 444
    .line 445
    move-result v15

    .line 446
    iput v15, v14, LV6/b;->p0:I

    .line 447
    .line 448
    iget-object v6, v14, LV6/a;->T:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 456
    .line 457
    const v6, 0x7f0b016f

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    move-object v15, v1

    .line 465
    check-cast v15, Landroid/widget/LinearLayout;

    .line 466
    .line 467
    new-instance v1, LV6/d;

    .line 468
    .line 469
    invoke-direct {v1}, LV6/d;-><init>()V

    .line 470
    .line 471
    .line 472
    new-instance v6, LV6/c;

    .line 473
    .line 474
    invoke-direct {v6}, LV6/c;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    iput v12, v6, LV6/c;->H:I

    .line 482
    .line 483
    iget-object v12, v1, LV6/d;->J:Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    const/4 v6, 0x0

    .line 489
    iput-boolean v6, v1, LV6/d;->N:Z

    .line 490
    .line 491
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    iput v2, v1, LV6/d;->G:I

    .line 496
    .line 497
    iput-boolean v6, v1, LV6/d;->H:Z

    .line 498
    .line 499
    iput v4, v1, LV6/d;->M:F

    .line 500
    .line 501
    new-instance v12, LV6/b;

    .line 502
    .line 503
    invoke-direct {v12}, LV6/b;-><init>()V

    .line 504
    .line 505
    .line 506
    iput v6, v12, LV6/b;->h0:I

    .line 507
    .line 508
    iput v6, v12, LV6/b;->i0:I

    .line 509
    .line 510
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    iput v2, v12, LV6/a;->J:I

    .line 515
    .line 516
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    iput v2, v12, LV6/a;->I:I

    .line 521
    .line 522
    iput-boolean v6, v12, LV6/b;->l0:Z

    .line 523
    .line 524
    iput-boolean v6, v12, LV6/b;->m0:Z

    .line 525
    .line 526
    iput-boolean v6, v12, LV6/a;->W:Z

    .line 527
    .line 528
    const/16 v2, 0xff

    .line 529
    .line 530
    invoke-static {v6, v2, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iput v2, v12, LV6/b;->p0:I

    .line 535
    .line 536
    iget-object v2, v12, LV6/a;->T:Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 542
    .line 543
    move-object v6, v1

    .line 544
    check-cast v6, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 545
    .line 546
    new-instance v5, Lk/g;

    .line 547
    .line 548
    const/16 v16, 0x16

    .line 549
    .line 550
    move-object v1, v5

    .line 551
    move-object/from16 v2, p0

    .line 552
    .line 553
    move-object v3, v10

    .line 554
    move-object v4, v13

    .line 555
    move-object/from16 v17, v12

    .line 556
    .line 557
    move-object v12, v5

    .line 558
    move-object v5, v15

    .line 559
    move-object/from16 v23, v15

    .line 560
    .line 561
    move-object v15, v6

    .line 562
    move/from16 v6, v16

    .line 563
    .line 564
    invoke-direct/range {v1 .. v6}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v15, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    .line 569
    .line 570
    new-instance v12, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .line 574
    .line 575
    new-instance v15, Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .line 579
    .line 580
    new-instance v6, Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .line 584
    .line 585
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 586
    .line 587
    new-instance v5, Lk7/c;

    .line 588
    .line 589
    const/4 v2, 0x6

    .line 590
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    check-cast v3, Ljava/lang/String;

    .line 595
    .line 596
    const-string v4, ":8080"

    .line 597
    .line 598
    const-string v9, ""

    .line 599
    .line 600
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-direct {v5}, Ljava/lang/Thread;-><init>()V

    .line 605
    .line 606
    .line 607
    new-instance v4, Ljava/util/HashMap;

    .line 608
    .line 609
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 610
    .line 611
    .line 612
    move-object/from16 v16, v3

    .line 613
    .line 614
    const-wide/16 v2, 0x0

    .line 615
    .line 616
    iput-wide v2, v5, Lk7/c;->I:D

    .line 617
    .line 618
    iput-wide v2, v5, Lk7/c;->J:D

    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    iput-boolean v2, v5, Lk7/c;->K:Z

    .line 622
    .line 623
    move-object/from16 v2, v16

    .line 624
    .line 625
    iput-object v2, v5, Lk7/c;->G:Ljava/lang/String;

    .line 626
    .line 627
    const/4 v2, 0x6

    .line 628
    iput v2, v5, Lk7/c;->H:I

    .line 629
    .line 630
    new-instance v4, Lk7/a;

    .line 631
    .line 632
    const-string v2, "/"

    .line 633
    .line 634
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    array-length v2, v2

    .line 643
    const/16 v16, 0x1

    .line 644
    .line 645
    add-int/lit8 v2, v2, -0x1

    .line 646
    .line 647
    aget-object v2, v3, v2

    .line 648
    .line 649
    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-direct {v4}, Ljava/lang/Thread;-><init>()V

    .line 654
    .line 655
    .line 656
    move-object v9, v13

    .line 657
    move-object/from16 v16, v14

    .line 658
    .line 659
    const-wide/16 v13, 0x0

    .line 660
    .line 661
    iput-wide v13, v4, Lk7/a;->H:J

    .line 662
    .line 663
    const-wide/16 v13, 0x0

    .line 664
    .line 665
    iput-wide v13, v4, Lk7/a;->I:D

    .line 666
    .line 667
    const/4 v3, 0x0

    .line 668
    iput v3, v4, Lk7/a;->J:I

    .line 669
    .line 670
    iput-wide v13, v4, Lk7/a;->K:D

    .line 671
    .line 672
    iput-boolean v3, v4, Lk7/a;->L:Z

    .line 673
    .line 674
    iput-wide v13, v4, Lk7/a;->M:D

    .line 675
    .line 676
    const/16 v13, 0xf

    .line 677
    .line 678
    iput v13, v4, Lk7/a;->N:I

    .line 679
    .line 680
    const/4 v13, 0x0

    .line 681
    iput-object v13, v4, Lk7/a;->O:Ljava/net/HttpURLConnection;

    .line 682
    .line 683
    iput-object v2, v4, Lk7/a;->G:Ljava/lang/String;

    .line 684
    .line 685
    new-instance v13, Lk7/b;

    .line 686
    .line 687
    invoke-direct {v13}, Ljava/lang/Thread;-><init>()V

    .line 688
    .line 689
    .line 690
    iput-boolean v3, v13, Lk7/b;->H:Z

    .line 691
    .line 692
    const-wide/16 v2, 0x0

    .line 693
    .line 694
    iput-wide v2, v13, Lk7/b;->I:D

    .line 695
    .line 696
    iput-object v8, v13, Lk7/b;->G:Ljava/lang/String;

    .line 697
    .line 698
    move-object v2, v1

    .line 699
    move-object v3, v2

    .line 700
    move-object v8, v3

    .line 701
    move-object v14, v8

    .line 702
    move-object/from16 v18, v14

    .line 703
    .line 704
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 705
    .line 706
    .line 707
    move-result v24

    .line 708
    if-nez v24, :cond_6

    .line 709
    .line 710
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 711
    .line 712
    .line 713
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 714
    .line 715
    :cond_6
    move-object/from16 v24, v1

    .line 716
    .line 717
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    if-eqz v1, :cond_7

    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    if-nez v1, :cond_7

    .line 728
    .line 729
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 730
    .line 731
    .line 732
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 733
    .line 734
    move-object/from16 v25, v1

    .line 735
    .line 736
    goto :goto_4

    .line 737
    :cond_7
    move-object/from16 v25, v2

    .line 738
    .line 739
    :goto_4
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    if-eqz v1, :cond_8

    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-nez v1, :cond_8

    .line 750
    .line 751
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 752
    .line 753
    .line 754
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 755
    .line 756
    move-object/from16 v26, v1

    .line 757
    .line 758
    goto :goto_5

    .line 759
    :cond_8
    move-object/from16 v26, v3

    .line 760
    .line 761
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-eqz v1, :cond_a

    .line 766
    .line 767
    iget-wide v1, v5, Lk7/c;->J:D

    .line 768
    .line 769
    const-wide/16 v21, 0x0

    .line 770
    .line 771
    cmpl-double v3, v1, v21

    .line 772
    .line 773
    if-nez v3, :cond_9

    .line 774
    .line 775
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 776
    .line 777
    const-string v2, "Ping error..."

    .line 778
    .line 779
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    :goto_6
    move-object/from16 v30, v4

    .line 783
    .line 784
    move-object/from16 v32, v10

    .line 785
    .line 786
    move-object/from16 v31, v11

    .line 787
    .line 788
    move-object v11, v5

    .line 789
    move-object v10, v6

    .line 790
    goto :goto_7

    .line 791
    :cond_9
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 794
    .line 795
    new-instance v2, Lk7/i;

    .line 796
    .line 797
    const/4 v3, 0x0

    .line 798
    invoke-direct {v2, v7, v5, v3}, Lk7/i;-><init>(Ln2/t;Lk7/c;I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 802
    .line 803
    .line 804
    goto :goto_6

    .line 805
    :cond_a
    iget-wide v1, v5, Lk7/c;->I:D

    .line 806
    .line 807
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 815
    .line 816
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 817
    .line 818
    new-instance v2, Lk7/i;

    .line 819
    .line 820
    const/4 v3, 0x1

    .line 821
    invoke-direct {v2, v7, v5, v3}, Lk7/i;-><init>(Ln2/t;Lk7/c;I)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 825
    .line 826
    .line 827
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 828
    .line 829
    move-object v3, v1

    .line 830
    check-cast v3, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 831
    .line 832
    new-instance v2, Lk7/e;

    .line 833
    .line 834
    const/16 v27, 0x2

    .line 835
    .line 836
    move-object v1, v2

    .line 837
    move-object/from16 v28, v2

    .line 838
    .line 839
    move-object/from16 v2, p0

    .line 840
    .line 841
    move-object/from16 v29, v3

    .line 842
    .line 843
    move-object v3, v12

    .line 844
    move-object/from16 v30, v4

    .line 845
    .line 846
    move-object v4, v11

    .line 847
    move-object/from16 v31, v11

    .line 848
    .line 849
    move-object v11, v5

    .line 850
    move-object v5, v10

    .line 851
    move-object/from16 v32, v10

    .line 852
    .line 853
    move-object v10, v6

    .line 854
    move/from16 v6, v27

    .line 855
    .line 856
    invoke-direct/range {v1 .. v6}, Lk7/e;-><init>(Ln2/t;Ljava/util/ArrayList;LV6/b;Landroid/widget/LinearLayout;I)V

    .line 857
    .line 858
    .line 859
    move-object/from16 v2, v28

    .line 860
    .line 861
    move-object/from16 v1, v29

    .line 862
    .line 863
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 864
    .line 865
    .line 866
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    if-eqz v1, :cond_d

    .line 871
    .line 872
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    if-eqz v1, :cond_c

    .line 877
    .line 878
    move-object/from16 v6, v30

    .line 879
    .line 880
    iget-wide v1, v6, Lk7/a;->K:D

    .line 881
    .line 882
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    .line 883
    .line 884
    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 885
    .line 886
    .line 887
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 888
    .line 889
    const/4 v2, 0x2

    .line 890
    invoke-virtual {v3, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 895
    .line 896
    .line 897
    move-result-wide v1

    .line 898
    move-wide/from16 v21, v1

    .line 899
    .line 900
    const-wide/16 v1, 0x0

    .line 901
    .line 902
    goto :goto_8

    .line 903
    :catch_1
    nop

    .line 904
    const-wide/16 v1, 0x0

    .line 905
    .line 906
    const-wide/16 v21, 0x0

    .line 907
    .line 908
    :goto_8
    cmpl-double v3, v21, v1

    .line 909
    .line 910
    if-nez v3, :cond_b

    .line 911
    .line 912
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 913
    .line 914
    const-string v2, "Download error..."

    .line 915
    .line 916
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    :goto_9
    move-object/from16 v29, v9

    .line 920
    .line 921
    move-object/from16 v28, v12

    .line 922
    .line 923
    move-object v9, v6

    .line 924
    goto :goto_a

    .line 925
    :cond_b
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 926
    .line 927
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 928
    .line 929
    new-instance v2, Lk7/d;

    .line 930
    .line 931
    const/4 v3, 0x1

    .line 932
    invoke-direct {v2, v7, v6, v3}, Lk7/d;-><init>(Ln2/t;Lk7/a;I)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 936
    .line 937
    .line 938
    goto :goto_9

    .line 939
    :cond_c
    move-object/from16 v6, v30

    .line 940
    .line 941
    iget-wide v1, v6, Lk7/a;->M:D

    .line 942
    .line 943
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    iget-object v3, v0, LW4/a;->J:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v3, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 953
    .line 954
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    invoke-static {v1, v2}, Lpe/hf/black20/speedtest/SpeedTestActivity;->a(D)I

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    sput v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 962
    .line 963
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 966
    .line 967
    new-instance v2, Lk7/d;

    .line 968
    .line 969
    const/4 v3, 0x0

    .line 970
    invoke-direct {v2, v7, v6, v3}, Lk7/d;-><init>(Ln2/t;Lk7/a;I)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 974
    .line 975
    .line 976
    sget v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 977
    .line 978
    sput v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->K:I

    .line 979
    .line 980
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 981
    .line 982
    move-object v5, v1

    .line 983
    check-cast v5, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 984
    .line 985
    new-instance v4, Lk7/e;

    .line 986
    .line 987
    const/16 v27, 0x0

    .line 988
    .line 989
    move-object v1, v4

    .line 990
    move-object/from16 v2, p0

    .line 991
    .line 992
    move-object v3, v15

    .line 993
    move-object/from16 v33, v4

    .line 994
    .line 995
    move-object/from16 v4, v16

    .line 996
    .line 997
    move-object/from16 v28, v12

    .line 998
    .line 999
    move-object v12, v5

    .line 1000
    move-object v5, v9

    .line 1001
    move-object/from16 v29, v9

    .line 1002
    .line 1003
    move-object v9, v6

    .line 1004
    move/from16 v6, v27

    .line 1005
    .line 1006
    invoke-direct/range {v1 .. v6}, Lk7/e;-><init>(Ln2/t;Ljava/util/ArrayList;LV6/b;Landroid/widget/LinearLayout;I)V

    .line 1007
    .line 1008
    .line 1009
    move-object/from16 v1, v33

    .line 1010
    .line 1011
    invoke-virtual {v12, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_a

    .line 1015
    :cond_d
    move-object/from16 v29, v9

    .line 1016
    .line 1017
    move-object/from16 v28, v12

    .line 1018
    .line 1019
    move-object/from16 v9, v30

    .line 1020
    .line 1021
    :goto_a
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_10

    .line 1026
    .line 1027
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    if-eqz v1, :cond_f

    .line 1032
    .line 1033
    iget-wide v1, v13, Lk7/b;->I:D

    .line 1034
    .line 1035
    :try_start_2
    new-instance v3, Ljava/math/BigDecimal;

    .line 1036
    .line 1037
    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1038
    .line 1039
    .line 1040
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1041
    .line 1042
    const/4 v12, 0x2

    .line 1043
    invoke-virtual {v3, v12, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v2

    .line 1051
    :goto_b
    const-wide/16 v21, 0x0

    .line 1052
    .line 1053
    goto :goto_c

    .line 1054
    :catch_2
    const/4 v12, 0x2

    .line 1055
    nop

    .line 1056
    const-wide/16 v2, 0x0

    .line 1057
    .line 1058
    goto :goto_b

    .line 1059
    :goto_c
    cmpl-double v1, v2, v21

    .line 1060
    .line 1061
    if-nez v1, :cond_e

    .line 1062
    .line 1063
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1064
    .line 1065
    const-string v2, "Upload error..."

    .line 1066
    .line 1067
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    :goto_d
    move-object/from16 v30, v10

    .line 1071
    .line 1072
    goto :goto_e

    .line 1073
    :cond_e
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 1074
    .line 1075
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 1076
    .line 1077
    new-instance v2, Lk7/f;

    .line 1078
    .line 1079
    const/4 v3, 0x0

    .line 1080
    invoke-direct {v2, v7, v13, v3}, Lk7/f;-><init>(Ln2/t;Lk7/b;I)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_d

    .line 1087
    :cond_f
    const/4 v12, 0x2

    .line 1088
    const-wide/16 v21, 0x0

    .line 1089
    .line 1090
    invoke-virtual {v13}, Lk7/b;->a()D

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v1

    .line 1094
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    iget-object v3, v0, LW4/a;->J:Ljava/lang/Object;

    .line 1102
    .line 1103
    check-cast v3, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 1104
    .line 1105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1106
    .line 1107
    .line 1108
    invoke-static {v1, v2}, Lpe/hf/black20/speedtest/SpeedTestActivity;->a(D)I

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    sput v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 1113
    .line 1114
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 1115
    .line 1116
    check-cast v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 1117
    .line 1118
    new-instance v2, Lk7/f;

    .line 1119
    .line 1120
    const/4 v3, 0x1

    .line 1121
    invoke-direct {v2, v7, v13, v3}, Lk7/f;-><init>(Ln2/t;Lk7/b;I)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1125
    .line 1126
    .line 1127
    sget v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 1128
    .line 1129
    sput v1, Lpe/hf/black20/speedtest/SpeedTestActivity;->K:I

    .line 1130
    .line 1131
    iget-object v1, v0, LW4/a;->J:Ljava/lang/Object;

    .line 1132
    .line 1133
    move-object v6, v1

    .line 1134
    check-cast v6, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 1135
    .line 1136
    new-instance v5, Lk7/e;

    .line 1137
    .line 1138
    const/16 v19, 0x1

    .line 1139
    .line 1140
    move-object v1, v5

    .line 1141
    move-object/from16 v2, p0

    .line 1142
    .line 1143
    move-object v3, v10

    .line 1144
    move-object/from16 v4, v17

    .line 1145
    .line 1146
    move-object v12, v5

    .line 1147
    move-object/from16 v5, v23

    .line 1148
    .line 1149
    move-object/from16 v30, v10

    .line 1150
    .line 1151
    move-object v10, v6

    .line 1152
    move/from16 v6, v19

    .line 1153
    .line 1154
    invoke-direct/range {v1 .. v6}, Lk7/e;-><init>(Ln2/t;Ljava/util/ArrayList;LV6/b;Landroid/widget/LinearLayout;I)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v10, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_e

    .line 1161
    :cond_10
    move-object/from16 v30, v10

    .line 1162
    .line 1163
    const-wide/16 v21, 0x0

    .line 1164
    .line 1165
    :goto_e
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1166
    .line 1167
    .line 1168
    move-result v1

    .line 1169
    if-eqz v1, :cond_11

    .line 1170
    .line 1171
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v1

    .line 1175
    if-eqz v1, :cond_11

    .line 1176
    .line 1177
    iget-boolean v1, v13, Lk7/b;->H:Z

    .line 1178
    .line 1179
    if-eqz v1, :cond_11

    .line 1180
    .line 1181
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 1184
    .line 1185
    new-instance v1, Lk7/g;

    .line 1186
    .line 1187
    const/4 v2, 0x0

    .line 1188
    invoke-direct {v1, v7, v2}, Lk7/g;-><init>(Ln2/t;I)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1192
    .line 1193
    .line 1194
    :goto_f
    return-void

    .line 1195
    :cond_11
    iget-boolean v1, v11, Lk7/c;->K:Z

    .line 1196
    .line 1197
    if-eqz v1, :cond_12

    .line 1198
    .line 1199
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1200
    .line 1201
    move-object v8, v1

    .line 1202
    :cond_12
    iget-boolean v1, v9, Lk7/a;->L:Z

    .line 1203
    .line 1204
    if-eqz v1, :cond_13

    .line 1205
    .line 1206
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1207
    .line 1208
    move-object v14, v1

    .line 1209
    :cond_13
    iget-boolean v1, v13, Lk7/b;->H:Z

    .line 1210
    .line 1211
    if-eqz v1, :cond_14

    .line 1212
    .line 1213
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1214
    .line 1215
    move-object/from16 v18, v1

    .line 1216
    .line 1217
    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    if-eqz v1, :cond_15

    .line 1222
    .line 1223
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    if-nez v1, :cond_15

    .line 1228
    .line 1229
    const-wide/16 v1, 0x12c

    .line 1230
    .line 1231
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1232
    .line 1233
    .line 1234
    :goto_10
    const-wide/16 v1, 0x64

    .line 1235
    .line 1236
    goto :goto_11

    .line 1237
    :catch_3
    nop

    .line 1238
    goto :goto_10

    .line 1239
    :cond_15
    const-wide/16 v1, 0x64

    .line 1240
    .line 1241
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1242
    .line 1243
    .line 1244
    goto :goto_11

    .line 1245
    :catch_4
    nop

    .line 1246
    :goto_11
    move-object v4, v9

    .line 1247
    move-object v5, v11

    .line 1248
    move-object/from16 v1, v24

    .line 1249
    .line 1250
    move-object/from16 v2, v25

    .line 1251
    .line 1252
    move-object/from16 v3, v26

    .line 1253
    .line 1254
    move-object/from16 v12, v28

    .line 1255
    .line 1256
    move-object/from16 v9, v29

    .line 1257
    .line 1258
    move-object/from16 v6, v30

    .line 1259
    .line 1260
    move-object/from16 v11, v31

    .line 1261
    .line 1262
    move-object/from16 v10, v32

    .line 1263
    .line 1264
    goto/16 :goto_3

    .line 1265
    .line 1266
    :pswitch_0
    iget-object v0, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1267
    .line 1268
    check-cast v0, Ljava/util/Collection;

    .line 1269
    .line 1270
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v1

    .line 1278
    if-eqz v1, :cond_17

    .line 1279
    .line 1280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v1

    .line 1284
    check-cast v1, LZ5/Y;

    .line 1285
    .line 1286
    iget-object v2, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v2, LZ5/Y;

    .line 1289
    .line 1290
    if-ne v1, v2, :cond_16

    .line 1291
    .line 1292
    goto :goto_12

    .line 1293
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1294
    .line 1295
    .line 1296
    sget-object v0, LZ5/K;->b:LY5/B;

    .line 1297
    .line 1298
    const/4 v0, 0x0

    .line 1299
    throw v0

    .line 1300
    :cond_17
    iget-object v0, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1301
    .line 1302
    check-cast v0, Ljava/util/concurrent/Future;

    .line 1303
    .line 1304
    const/4 v1, 0x0

    .line 1305
    if-eqz v0, :cond_18

    .line 1306
    .line 1307
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1308
    .line 1309
    .line 1310
    :cond_18
    iget-object v0, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1311
    .line 1312
    check-cast v0, Ljava/util/concurrent/Future;

    .line 1313
    .line 1314
    if-eqz v0, :cond_19

    .line 1315
    .line 1316
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1317
    .line 1318
    .line 1319
    :cond_19
    iget-object v0, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1320
    .line 1321
    check-cast v0, LZ5/K;

    .line 1322
    .line 1323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1324
    .line 1325
    .line 1326
    const/4 v0, 0x0

    .line 1327
    throw v0

    .line 1328
    :pswitch_1
    iget-object v1, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1329
    .line 1330
    new-instance v2, Ljava/util/ArrayList;

    .line 1331
    .line 1332
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    :try_start_5
    move-object v0, v1

    .line 1336
    check-cast v0, Lc4/d1;

    .line 1337
    .line 1338
    iget-object v3, v0, Lc4/d1;->J:Lc4/G;

    .line 1339
    .line 1340
    if-nez v3, :cond_1a

    .line 1341
    .line 1342
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 1343
    .line 1344
    check-cast v0, Lc4/l0;

    .line 1345
    .line 1346
    iget-object v3, v0, Lc4/l0;->O:Lc4/T;

    .line 1347
    .line 1348
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 1349
    .line 1350
    .line 1351
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 1352
    .line 1353
    const-string v4, "Failed to get conditional properties; not connected to service"

    .line 1354
    .line 1355
    iget-object v5, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v5, Ljava/lang/String;

    .line 1358
    .line 1359
    iget-object v6, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v6, Ljava/lang/String;

    .line 1362
    .line 1363
    invoke-virtual {v3, v5, v6, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1364
    .line 1365
    .line 1366
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 1367
    .line 1368
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 1369
    .line 1370
    .line 1371
    iget-object v1, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v1, Lcom/google/android/gms/internal/measurement/M;

    .line 1374
    .line 1375
    invoke-virtual {v0, v1, v2}, Lc4/I1;->J(Lcom/google/android/gms/internal/measurement/M;Ljava/util/ArrayList;)V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_15

    .line 1379
    :catchall_0
    move-exception v0

    .line 1380
    goto :goto_16

    .line 1381
    :catch_5
    move-exception v0

    .line 1382
    goto :goto_13

    .line 1383
    :cond_1a
    :try_start_6
    iget-object v4, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1384
    .line 1385
    check-cast v4, Lc4/J1;

    .line 1386
    .line 1387
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 1388
    .line 1389
    .line 1390
    iget-object v5, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1391
    .line 1392
    check-cast v5, Ljava/lang/String;

    .line 1393
    .line 1394
    iget-object v6, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1395
    .line 1396
    check-cast v6, Ljava/lang/String;

    .line 1397
    .line 1398
    invoke-interface {v3, v5, v6, v4}, Lc4/G;->d0(Ljava/lang/String;Ljava/lang/String;Lc4/J1;)Ljava/util/List;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    invoke-static {v3}, Lc4/I1;->z(Ljava/util/List;)Ljava/util/ArrayList;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v2

    .line 1406
    invoke-virtual {v0}, Lc4/d1;->D()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1407
    .line 1408
    .line 1409
    goto :goto_14

    .line 1410
    :goto_13
    :try_start_7
    move-object v3, v1

    .line 1411
    check-cast v3, Lc4/d1;

    .line 1412
    .line 1413
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 1414
    .line 1415
    check-cast v3, Lc4/l0;

    .line 1416
    .line 1417
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 1418
    .line 1419
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 1420
    .line 1421
    .line 1422
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 1423
    .line 1424
    const-string v4, "Failed to get conditional properties; remote exception"

    .line 1425
    .line 1426
    iget-object v5, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1427
    .line 1428
    check-cast v5, Ljava/lang/String;

    .line 1429
    .line 1430
    iget-object v6, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1431
    .line 1432
    check-cast v6, Ljava/lang/String;

    .line 1433
    .line 1434
    invoke-virtual {v3, v5, v6, v0, v4}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1435
    .line 1436
    .line 1437
    :goto_14
    check-cast v1, Lc4/d1;

    .line 1438
    .line 1439
    iget-object v0, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1440
    .line 1441
    check-cast v0, Lcom/google/android/gms/internal/measurement/M;

    .line 1442
    .line 1443
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 1444
    .line 1445
    check-cast v1, Lc4/l0;

    .line 1446
    .line 1447
    iget-object v1, v1, Lc4/l0;->R:Lc4/I1;

    .line 1448
    .line 1449
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v1, v0, v2}, Lc4/I1;->J(Lcom/google/android/gms/internal/measurement/M;Ljava/util/ArrayList;)V

    .line 1453
    .line 1454
    .line 1455
    :goto_15
    return-void

    .line 1456
    :goto_16
    check-cast v1, Lc4/d1;

    .line 1457
    .line 1458
    iget-object v3, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1459
    .line 1460
    check-cast v3, Lcom/google/android/gms/internal/measurement/M;

    .line 1461
    .line 1462
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 1463
    .line 1464
    check-cast v1, Lc4/l0;

    .line 1465
    .line 1466
    iget-object v1, v1, Lc4/l0;->R:Lc4/I1;

    .line 1467
    .line 1468
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v1, v3, v2}, Lc4/I1;->J(Lcom/google/android/gms/internal/measurement/M;Ljava/util/ArrayList;)V

    .line 1472
    .line 1473
    .line 1474
    throw v0

    .line 1475
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Ln2/t;->a()V

    .line 1476
    .line 1477
    .line 1478
    return-void

    .line 1479
    :pswitch_3
    iget-object v0, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1480
    .line 1481
    move-object v1, v0

    .line 1482
    check-cast v1, Lc4/r0;

    .line 1483
    .line 1484
    iget-object v0, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v0, Lc4/J1;

    .line 1487
    .line 1488
    iget-object v2, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1489
    .line 1490
    check-cast v2, Landroid/os/Bundle;

    .line 1491
    .line 1492
    iget-object v3, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1493
    .line 1494
    check-cast v3, Lc4/I;

    .line 1495
    .line 1496
    iget-object v4, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1497
    .line 1498
    check-cast v4, Ljava/lang/String;

    .line 1499
    .line 1500
    iget-object v5, v1, Lc4/r0;->G:Lc4/A1;

    .line 1501
    .line 1502
    invoke-virtual {v5}, Lc4/A1;->i()V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v5, v2, v0}, Lc4/A1;->h(Landroid/os/Bundle;Lc4/J1;)Ljava/util/List;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    :try_start_8
    invoke-interface {v3, v0}, Lc4/I;->P2(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1510
    .line 1511
    .line 1512
    goto :goto_17

    .line 1513
    :catch_6
    move-exception v0

    .line 1514
    move-object v2, v0

    .line 1515
    iget-object v0, v1, Lc4/r0;->G:Lc4/A1;

    .line 1516
    .line 1517
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    const-string v1, "Failed to return trigger URIs for app"

    .line 1522
    .line 1523
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 1524
    .line 1525
    invoke-virtual {v0, v4, v2, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    :goto_17
    return-void

    .line 1529
    :pswitch_4
    iget-object v0, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1530
    .line 1531
    move-object v1, v0

    .line 1532
    check-cast v1, LZ3/g0;

    .line 1533
    .line 1534
    iget-object v0, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1535
    .line 1536
    check-cast v0, Landroid/app/Activity;

    .line 1537
    .line 1538
    iget-object v2, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1539
    .line 1540
    check-cast v2, Lv4/b;

    .line 1541
    .line 1542
    iget-object v3, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1543
    .line 1544
    check-cast v3, La3/i;

    .line 1545
    .line 1546
    iget-object v4, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1547
    .line 1548
    check-cast v4, LB0/y;

    .line 1549
    .line 1550
    const-string v5, "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\""

    .line 1551
    .line 1552
    :try_start_9
    iget-object v6, v2, Lv4/b;->c:LG/c;

    .line 1553
    .line 1554
    if-eqz v6, :cond_1b

    .line 1555
    .line 1556
    iget-boolean v6, v6, LG/c;->H:Z

    .line 1557
    .line 1558
    if-nez v6, :cond_1c

    .line 1559
    .line 1560
    :cond_1b
    iget-object v6, v1, LZ3/g0;->a:Landroid/app/Application;

    .line 1561
    .line 1562
    invoke-static {v6}, LZ3/C;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v6

    .line 1566
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    const-string v5, "\") to set this as a debug device."

    .line 1575
    .line 1576
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v5

    .line 1583
    const-string v6, "UserMessagingPlatform"

    .line 1584
    .line 1585
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .line 1587
    .line 1588
    :cond_1c
    iget-object v5, v1, LZ3/g0;->f:LZ3/d0;

    .line 1589
    .line 1590
    invoke-virtual {v5, v0, v2}, LZ3/d0;->a(Landroid/app/Activity;Lv4/b;)Lcom/google/android/gms/internal/ads/Nd;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    invoke-virtual {v1, v0}, LZ3/g0;->a(Lcom/google/android/gms/internal/ads/Nd;)Lm0/H;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v0

    .line 1598
    iget-object v2, v1, LZ3/g0;->g:LZ3/i0;

    .line 1599
    .line 1600
    new-instance v5, LB0/w0;

    .line 1601
    .line 1602
    invoke-direct {v5, v2, v0}, LB0/w0;-><init>(LZ3/i0;Lm0/H;)V

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v5}, LB0/w0;->i()LF/d;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v0

    .line 1609
    iget-object v2, v1, LZ3/g0;->d:LZ3/i;

    .line 1610
    .line 1611
    iget v5, v0, LF/d;->H:I

    .line 1612
    .line 1613
    iget-object v6, v2, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 1614
    .line 1615
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v6

    .line 1619
    const-string v8, "consent_status"

    .line 1620
    .line 1621
    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v5

    .line 1625
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1626
    .line 1627
    .line 1628
    iget-object v5, v0, LF/d;->I:Ljava/lang/Object;

    .line 1629
    .line 1630
    check-cast v5, Lv4/a;

    .line 1631
    .line 1632
    iget-object v2, v2, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 1633
    .line 1634
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v2

    .line 1638
    const-string v6, "privacy_options_requirement_status"

    .line 1639
    .line 1640
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v5

    .line 1644
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1649
    .line 1650
    .line 1651
    iget-object v2, v1, LZ3/g0;->e:LZ3/p;

    .line 1652
    .line 1653
    iget-object v5, v0, LF/d;->J:Ljava/lang/Object;

    .line 1654
    .line 1655
    check-cast v5, LZ3/q;

    .line 1656
    .line 1657
    iget-object v2, v2, LZ3/p;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1658
    .line 1659
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1660
    .line 1661
    .line 1662
    iget-object v2, v1, LZ3/g0;->h:LZ3/Z;

    .line 1663
    .line 1664
    iget-object v2, v2, LZ3/Z;->a:Ljava/util/concurrent/Executor;

    .line 1665
    .line 1666
    new-instance v5, LZ3/v;

    .line 1667
    .line 1668
    const/4 v6, 0x1

    .line 1669
    invoke-direct {v5, v1, v3, v0, v6}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1670
    .line 1671
    .line 1672
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch LZ3/a0; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1673
    .line 1674
    .line 1675
    goto :goto_1a

    .line 1676
    :catch_7
    move-exception v0

    .line 1677
    goto :goto_18

    .line 1678
    :catch_8
    move-exception v0

    .line 1679
    goto :goto_19

    .line 1680
    :goto_18
    new-instance v2, LZ3/a0;

    .line 1681
    .line 1682
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v0

    .line 1686
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    const-string v3, "Caught exception when trying to request consent info update: "

    .line 1691
    .line 1692
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    const/4 v3, 0x1

    .line 1697
    invoke-direct {v2, v3, v0}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 1698
    .line 1699
    .line 1700
    iget-object v0, v1, LZ3/g0;->b:Landroid/os/Handler;

    .line 1701
    .line 1702
    new-instance v1, LZ3/f0;

    .line 1703
    .line 1704
    invoke-direct {v1, v4, v2, v3}, LZ3/f0;-><init>(LB0/y;LZ3/a0;I)V

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1708
    .line 1709
    .line 1710
    goto :goto_1a

    .line 1711
    :goto_19
    iget-object v1, v1, LZ3/g0;->b:Landroid/os/Handler;

    .line 1712
    .line 1713
    new-instance v2, LZ3/f0;

    .line 1714
    .line 1715
    const/4 v3, 0x0

    .line 1716
    invoke-direct {v2, v4, v0, v3}, LZ3/f0;-><init>(LB0/y;LZ3/a0;I)V

    .line 1717
    .line 1718
    .line 1719
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1720
    .line 1721
    .line 1722
    :goto_1a
    return-void

    .line 1723
    :pswitch_5
    iget-object v0, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v0, Lf3/f;

    .line 1726
    .line 1727
    new-instance v8, Lcom/google/android/gms/internal/ads/xc;

    .line 1728
    .line 1729
    if-nez v0, :cond_1d

    .line 1730
    .line 1731
    const/4 v4, 0x0

    .line 1732
    goto :goto_1b

    .line 1733
    :cond_1d
    iget-object v10, v0, Lf3/f;->a:Ll3/G0;

    .line 1734
    .line 1735
    move-object v4, v10

    .line 1736
    :goto_1b
    iget-object v0, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1737
    .line 1738
    check-cast v0, Lx3/a;

    .line 1739
    .line 1740
    iget-object v1, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1741
    .line 1742
    move-object v5, v1

    .line 1743
    check-cast v5, Ljava/lang/String;

    .line 1744
    .line 1745
    iget-object v1, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1746
    .line 1747
    move-object v3, v1

    .line 1748
    check-cast v3, Lf3/a;

    .line 1749
    .line 1750
    iget-object v1, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1751
    .line 1752
    move-object v2, v1

    .line 1753
    check-cast v2, Landroid/content/Context;

    .line 1754
    .line 1755
    const/4 v6, 0x0

    .line 1756
    move-object v1, v8

    .line 1757
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/xc;->r(Lx3/a;)V

    .line 1761
    .line 1762
    .line 1763
    return-void

    .line 1764
    :pswitch_6
    :try_start_a
    iget-object v0, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1765
    .line 1766
    check-cast v0, Lo2/j;

    .line 1767
    .line 1768
    iget-object v0, v0, Lo2/h;->G:Ljava/lang/Object;

    .line 1769
    .line 1770
    instance-of v0, v0, Lo2/a;

    .line 1771
    .line 1772
    if-nez v0, :cond_1f

    .line 1773
    .line 1774
    iget-object v0, v7, Ln2/t;->J:Ljava/lang/Object;

    .line 1775
    .line 1776
    check-cast v0, Ljava/util/UUID;

    .line 1777
    .line 1778
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    iget-object v1, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1783
    .line 1784
    check-cast v1, Ln2/u;

    .line 1785
    .line 1786
    iget-object v1, v1, Ln2/u;->c:Lm2/s;

    .line 1787
    .line 1788
    invoke-virtual {v1, v0}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v1

    .line 1792
    if-eqz v1, :cond_1e

    .line 1793
    .line 1794
    iget v2, v1, Lm2/q;->b:I

    .line 1795
    .line 1796
    invoke-static {v2}, Lcom/google/protobuf/U2;->d(I)Z

    .line 1797
    .line 1798
    .line 1799
    move-result v2

    .line 1800
    if-nez v2, :cond_1e

    .line 1801
    .line 1802
    iget-object v2, v7, Ln2/t;->L:Ljava/lang/Object;

    .line 1803
    .line 1804
    check-cast v2, Ln2/u;

    .line 1805
    .line 1806
    iget-object v2, v2, Ln2/u;->b:Ll2/a;

    .line 1807
    .line 1808
    iget-object v3, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1809
    .line 1810
    check-cast v3, Ld2/f;

    .line 1811
    .line 1812
    check-cast v2, Le2/n;

    .line 1813
    .line 1814
    invoke-virtual {v2, v0, v3}, Le2/n;->i(Ljava/lang/String;Ld2/f;)V

    .line 1815
    .line 1816
    .line 1817
    iget-object v0, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1818
    .line 1819
    check-cast v0, Landroid/content/Context;

    .line 1820
    .line 1821
    invoke-static {v1}, Lm2/f;->a(Lm2/q;)Lm2/j;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v1

    .line 1825
    iget-object v2, v7, Ln2/t;->K:Ljava/lang/Object;

    .line 1826
    .line 1827
    check-cast v2, Ld2/f;

    .line 1828
    .line 1829
    invoke-static {v0, v1, v2}, Ll2/c;->a(Landroid/content/Context;Lm2/j;Ld2/f;)Landroid/content/Intent;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    iget-object v1, v7, Ln2/t;->H:Ljava/lang/Object;

    .line 1834
    .line 1835
    check-cast v1, Landroid/content/Context;

    .line 1836
    .line 1837
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1838
    .line 1839
    .line 1840
    goto :goto_1c

    .line 1841
    :catchall_1
    move-exception v0

    .line 1842
    goto :goto_1d

    .line 1843
    :cond_1e
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 1844
    .line 1845
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1846
    .line 1847
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    throw v1

    .line 1851
    :cond_1f
    :goto_1c
    iget-object v0, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1852
    .line 1853
    check-cast v0, Lo2/j;

    .line 1854
    .line 1855
    const/4 v1, 0x0

    .line 1856
    invoke-virtual {v0, v1}, Lo2/j;->j(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1857
    .line 1858
    .line 1859
    goto :goto_1e

    .line 1860
    :goto_1d
    iget-object v1, v7, Ln2/t;->I:Ljava/lang/Object;

    .line 1861
    .line 1862
    check-cast v1, Lo2/j;

    .line 1863
    .line 1864
    invoke-virtual {v1, v0}, Lo2/j;->k(Ljava/lang/Throwable;)Z

    .line 1865
    .line 1866
    .line 1867
    :goto_1e
    return-void

    .line 1868
    nop

    .line 1869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
