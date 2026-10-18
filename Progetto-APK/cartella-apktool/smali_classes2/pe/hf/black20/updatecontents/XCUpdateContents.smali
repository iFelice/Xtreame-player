.class public Lpe/hf/black20/updatecontents/XCUpdateContents;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lpe/hf/black20/util/d;


# static fields
.field public static final synthetic b0:I


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public H:Lc7/a;

.field public I:Lc7/d;

.field public J:Lh7/i;

.field public final K:Lpe/hf/black20/updatecontents/XCUpdateContents;

.field public L:Landroid/widget/Button;

.field public final M:Ljava/util/concurrent/ExecutorService;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Ljava/lang/String;

.field public Y:Landroid/os/Handler;

.field public Z:Ll7/h;

.field public a0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->M:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 24
    .line 25
    const-string v0, "yes"

    .line 26
    .line 27
    iput-object v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->X:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "XCUpdateContents -- onFailureJson - "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    const/4 v0, -0x1

    .line 29
    sparse-switch p1, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_0
    const-string p1, "list-vod"

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x5

    .line 43
    goto :goto_0

    .line 44
    :sswitch_1
    const-string p1, "cat-vod"

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x4

    .line 54
    goto :goto_0

    .line 55
    :sswitch_2
    const-string p1, "cat-series"

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x3

    .line 65
    goto :goto_0

    .line 66
    :sswitch_3
    const-string p1, "list-series"

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v0, 0x2

    .line 76
    goto :goto_0

    .line 77
    :sswitch_4
    const-string p1, "cat-livetv"

    .line 78
    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 88
    :sswitch_5
    const-string p1, "list-livetv"

    .line 89
    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 v0, 0x0

    .line 98
    :goto_0
    const/4 p1, 0x0

    .line 99
    packed-switch v0, :pswitch_data_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_0
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 104
    .line 105
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 106
    .line 107
    const-string p3, "vods"

    .line 108
    .line 109
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_1
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 114
    .line 115
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 116
    .line 117
    const-string p3, "vod_category"

    .line 118
    .line 119
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_2
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 124
    .line 125
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 126
    .line 127
    const-string p3, "series_category"

    .line 128
    .line 129
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_3
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 134
    .line 135
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 136
    .line 137
    const-string p3, "series"

    .line 138
    .line 139
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_4
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 144
    .line 145
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 146
    .line 147
    const-string p3, "tv_category"

    .line 148
    .line 149
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :pswitch_5
    iput-boolean p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 154
    .line 155
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 156
    .line 157
    const-string p3, "liststreams"

    .line 158
    .line 159
    invoke-static {p2, p3, p1, p1}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x45dc5f83 -> :sswitch_5
        -0x3ce03dbb -> :sswitch_4
        -0x3a24957a -> :sswitch_3
        -0x312873b2 -> :sswitch_2
        0x2107e254 -> :sswitch_1
        0x50236f1c -> :sswitch_0
    .end sparse-switch

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v0, "list-vod"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v7, 0x5

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v0, "cat-vod"

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v7, 0x4

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "cat-series"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v7, 0x3

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "list-series"

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v7, 0x2

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v0, "cat-livetv"

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v7, 0x1

    .line 73
    goto :goto_0

    .line 74
    :sswitch_5
    const-string v0, "list-livetv"

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v7, 0x0

    .line 84
    :goto_0
    iget-object p2, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->M:Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    const-string v8, "XCIPTV_TAG"

    .line 88
    .line 89
    if-eqz v7, :cond_b

    .line 90
    .line 91
    if-eq v7, v6, :cond_a

    .line 92
    .line 93
    if-eq v7, v4, :cond_9

    .line 94
    .line 95
    if-eq v7, v3, :cond_8

    .line 96
    .line 97
    if-eq v7, v2, :cond_7

    .line 98
    .line 99
    if-eq v7, v1, :cond_6

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_6
    :try_start_0
    new-instance v1, Ll7/i;

    .line 104
    .line 105
    invoke-direct {v1, p0, p1, v4}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :catch_0
    const-string p1, "XCUpdateContents -- list-vod"

    .line 114
    .line 115
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 119
    .line 120
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 121
    .line 122
    const-string p2, "vods"

    .line 123
    .line 124
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_7
    :try_start_1
    new-instance v2, Ll7/i;

    .line 130
    .line 131
    invoke-direct {v2, p0, p1, v1}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :catch_1
    const-string p1, "XCUpdateContents -- cat-vod"

    .line 140
    .line 141
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 145
    .line 146
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 147
    .line 148
    const-string p2, "vod_category"

    .line 149
    .line 150
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    :try_start_2
    new-instance v1, Ll7/i;

    .line 155
    .line 156
    invoke-direct {v1, p0, p1, v6}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_2
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 164
    .line 165
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 166
    .line 167
    const-string p2, "series_category"

    .line 168
    .line 169
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p1, "XCUpdateContents -- cat-series"

    .line 173
    .line 174
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    :try_start_3
    new-instance v1, Ll7/i;

    .line 179
    .line 180
    invoke-direct {v1, p0, p1, v3}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catch_3
    const-string p1, "XCUpdateContents -- list-series"

    .line 188
    .line 189
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 193
    .line 194
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 195
    .line 196
    const-string p2, "series"

    .line 197
    .line 198
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    :try_start_4
    new-instance v1, Ll7/i;

    .line 203
    .line 204
    invoke-direct {v1, p0, p1, v2}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :catch_4
    const-string p1, "XCUpdateContents -- cat-livetv"

    .line 212
    .line 213
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 217
    .line 218
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 219
    .line 220
    const-string p2, "tv_category"

    .line 221
    .line 222
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_b
    :try_start_5
    new-instance v1, Ll7/i;

    .line 227
    .line 228
    invoke-direct {v1, p0, p1, v5}, Ll7/i;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :catch_5
    const-string p1, "XCUpdateContents -- list-livetv"

    .line 236
    .line 237
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iput-boolean v6, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 241
    .line 242
    iget-object p1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 243
    .line 244
    const-string p2, "liststreams"

    .line 245
    .line 246
    invoke-static {p1, p2, v0, v0}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :goto_1
    return-void

    .line 250
    nop

    .line 251
    :sswitch_data_0
    .sparse-switch
        -0x45dc5f83 -> :sswitch_5
        -0x3ce03dbb -> :sswitch_4
        -0x3a24957a -> :sswitch_3
        -0x312873b2 -> :sswitch_2
        0x2107e254 -> :sswitch_1
        0x50236f1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->X:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "yes"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "ORT_PROCESS_STATUS"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0e0051

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b028a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v2, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 22
    .line 23
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const v3, 0x7f0805f0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v3, 0x7f08053b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const-string v1, "XCIPTV_TAG"

    .line 43
    .line 44
    const-string v3, "XCUpdateContents -----------Calling XCUpdateContents---------------"

    .line 45
    .line 46
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-string v3, "pe.hf.black20"

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    new-instance v3, Lc7/a;

    .line 59
    .line 60
    invoke-direct {v3, v2, v4}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->H:Lc7/a;

    .line 64
    .line 65
    new-instance v3, Lc7/d;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 71
    .line 72
    new-instance v3, Lc7/b;

    .line 73
    .line 74
    invoke-direct {v3, v2, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->H:Lc7/a;

    .line 78
    .line 79
    const-string v5, "Default (XC)"

    .line 80
    .line 81
    const-string v6, "ORT_PROFILE"

    .line 82
    .line 83
    invoke-static {v6, v5, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 88
    .line 89
    const v3, 0x7f0b058a

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->T:Landroid/widget/TextView;

    .line 99
    .line 100
    const v3, 0x7f0b0594

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->U:Landroid/widget/TextView;

    .line 110
    .line 111
    const v3, 0x7f0b056f

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->V:Landroid/widget/TextView;

    .line 121
    .line 122
    const v3, 0x7f0b0537

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Landroid/widget/TextView;

    .line 130
    .line 131
    const v3, 0x7f0b0541

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->W:Landroid/widget/TextView;

    .line 141
    .line 142
    const v5, 0x7f130202

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    const v3, 0x7f0b00b0

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/widget/Button;

    .line 160
    .line 161
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 162
    .line 163
    const v3, 0x7f0b03d8

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/widget/ProgressBar;

    .line 171
    .line 172
    const/4 v3, 0x6

    .line 173
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->a0:Ljava/util/concurrent/ExecutorService;

    .line 178
    .line 179
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    .line 180
    .line 181
    iget-object v6, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->a0:Ljava/util/concurrent/ExecutorService;

    .line 182
    .line 183
    invoke-direct {v3, v6}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const/4 v6, 0x0

    .line 191
    const/4 v7, 0x1

    .line 192
    if-eqz v3, :cond_8

    .line 193
    .line 194
    const-string v3, "no"

    .line 195
    .line 196
    iput-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->X:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v8, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 199
    .line 200
    invoke-virtual {v8, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    .line 202
    .line 203
    iget-object v8, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 204
    .line 205
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const-string v8, "ORT_PROCESS_STATUS"

    .line 217
    .line 218
    invoke-virtual {v5, v4, v8}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 219
    .line 220
    .line 221
    const-string v5, "STOP SERVICE-----------OTRServices--------------"

    .line 222
    .line 223
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    const-class v5, Lpe/hf/black20/services/OTRServices;

    .line 227
    .line 228
    invoke-static {v2, v5}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    const-string v9, "XCUpdateContents JobScheduler is not Running"

    .line 236
    .line 237
    const-string v10, "XCUpdateContents JobScheduler is Running"

    .line 238
    .line 239
    const-string v11, "XCUpdateContents stopBackgroundTask"

    .line 240
    .line 241
    if-eqz v5, :cond_2

    .line 242
    .line 243
    invoke-static {v2}, Lpe/hf/black20/ORPlayerMainActivity;->w(Landroid/content/Context;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_1

    .line 248
    .line 249
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    const-string v5, "jobscheduler"

    .line 256
    .line 257
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 262
    .line 263
    const/16 v5, 0x7b

    .line 264
    .line 265
    invoke-virtual {v2, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_1
    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_2
    invoke-static {v2}, Lpe/hf/black20/CategoriesActivity;->i(Landroid/content/Context;)Z

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-eqz v5, :cond_3

    .line 281
    .line 282
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-static {v2}, Lpe/hf/black20/CategoriesActivity;->m(Landroid/app/Activity;)V

    .line 289
    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_3
    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :goto_1
    iget-object v2, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 299
    .line 300
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    iget-object v5, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 305
    .line 306
    const-string v9, "tvvodseries_dl_time"

    .line 307
    .line 308
    invoke-interface {v5, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_4

    .line 313
    .line 314
    invoke-interface {v2, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    .line 320
    .line 321
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v2, v7, v8}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 329
    .line 330
    .line 331
    const-string v2, "XCUpdateContents -- VolleyGETJSONArrayRequest Error"

    .line 332
    .line 333
    iget-object v5, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 334
    .line 335
    iget-object v5, v5, Lh7/i;->c:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    iget-object v8, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 342
    .line 343
    iget-object v8, v8, Lh7/i;->d:Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v8}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    iget-object v9, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 350
    .line 351
    const-string v10, "portal_vod"

    .line 352
    .line 353
    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-nez v9, :cond_5

    .line 362
    .line 363
    iget-object v9, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 364
    .line 365
    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    goto :goto_2

    .line 370
    :cond_5
    iget-object v9, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 371
    .line 372
    iget-object v9, v9, Lh7/i;->e:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    :goto_2
    iget-object v10, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 379
    .line 380
    const-string v11, "portal_series"

    .line 381
    .line 382
    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-nez v3, :cond_6

    .line 391
    .line 392
    iget-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 393
    .line 394
    invoke-interface {v3, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    goto :goto_3

    .line 399
    :cond_6
    iget-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 400
    .line 401
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    iget-object v11, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 413
    .line 414
    iget-object v11, v11, Lh7/i;->e:Ljava/lang/String;

    .line 415
    .line 416
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v11, "/player_api.php?username="

    .line 424
    .line 425
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v12, "&password="

    .line 432
    .line 433
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v13, "&action=get_live_categories"

    .line 437
    .line 438
    invoke-static {v10, v8, v13}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    new-instance v13, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v14, "&action=get_vod_categories"

    .line 463
    .line 464
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    new-instance v14, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v15, "&action=get_series_categories"

    .line 492
    .line 493
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v14

    .line 500
    new-instance v15, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    iget-object v4, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->J:Lh7/i;

    .line 506
    .line 507
    iget-object v4, v4, Lh7/i;->e:Ljava/lang/String;

    .line 508
    .line 509
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v4, "&action=get_live_streams"

    .line 526
    .line 527
    invoke-static {v15, v8, v4}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    new-instance v15, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v9, "&action=get_vod_streams"

    .line 552
    .line 553
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    new-instance v15, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v3, "&action=get_series"

    .line 581
    .line 582
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    :try_start_0
    new-instance v5, Ll/x;

    .line 590
    .line 591
    const-string v8, "cat-livetv"

    .line 592
    .line 593
    invoke-direct {v5, v0, v0, v8, v10}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .line 595
    .line 596
    goto :goto_4

    .line 597
    :catch_0
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 601
    .line 602
    iget-object v5, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 603
    .line 604
    const-string v8, "tv_category"

    .line 605
    .line 606
    invoke-static {v5, v8, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    :goto_4
    :try_start_1
    new-instance v5, Ll/x;

    .line 610
    .line 611
    const-string v8, "cat-vod"

    .line 612
    .line 613
    invoke-direct {v5, v0, v0, v8, v13}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    .line 615
    .line 616
    goto :goto_5

    .line 617
    :catch_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 621
    .line 622
    iget-object v5, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 623
    .line 624
    const-string v8, "vod_category"

    .line 625
    .line 626
    invoke-static {v5, v8, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    :goto_5
    :try_start_2
    new-instance v5, Ll/x;

    .line 630
    .line 631
    const-string v8, "cat-series"

    .line 632
    .line 633
    invoke-direct {v5, v0, v0, v8, v14}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 634
    .line 635
    .line 636
    goto :goto_6

    .line 637
    :catch_2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 641
    .line 642
    iget-object v5, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 643
    .line 644
    const-string v8, "series_category"

    .line 645
    .line 646
    invoke-static {v5, v8, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    :goto_6
    :try_start_3
    new-instance v5, Ll/x;

    .line 650
    .line 651
    const-string v8, "list-livetv"

    .line 652
    .line 653
    invoke-direct {v5, v0, v0, v8, v4}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 654
    .line 655
    .line 656
    goto :goto_7

    .line 657
    :catch_3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 661
    .line 662
    iget-object v4, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 663
    .line 664
    const-string v5, "liststreams"

    .line 665
    .line 666
    invoke-static {v4, v5, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :goto_7
    :try_start_4
    new-instance v4, Ll/x;

    .line 670
    .line 671
    const-string v5, "list-vod"

    .line 672
    .line 673
    invoke-direct {v4, v0, v0, v5, v9}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 674
    .line 675
    .line 676
    goto :goto_8

    .line 677
    :catch_4
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 681
    .line 682
    iget-object v4, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 683
    .line 684
    const-string v5, "vods"

    .line 685
    .line 686
    invoke-static {v4, v5, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :goto_8
    :try_start_5
    new-instance v4, Ll/x;

    .line 690
    .line 691
    const-string v5, "list-series"

    .line 692
    .line 693
    invoke-direct {v4, v0, v0, v5, v3}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 694
    .line 695
    .line 696
    goto :goto_9

    .line 697
    :catch_5
    iput-boolean v7, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 698
    .line 699
    iget-object v3, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 700
    .line 701
    const-string v4, "series"

    .line 702
    .line 703
    invoke-static {v3, v4, v6, v6}, La/r;->o(Lc7/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    :goto_9
    iget-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 710
    .line 711
    if-eqz v1, :cond_7

    .line 712
    .line 713
    iget-object v2, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 714
    .line 715
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 716
    .line 717
    .line 718
    iget-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 719
    .line 720
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    :cond_7
    new-instance v1, Landroid/os/Handler;

    .line 724
    .line 725
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 730
    .line 731
    .line 732
    iput-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 733
    .line 734
    new-instance v2, Ll7/h;

    .line 735
    .line 736
    const/4 v3, 0x0

    .line 737
    invoke-direct {v2, v0, v3}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 738
    .line 739
    .line 740
    iput-object v2, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 741
    .line 742
    const-wide/16 v3, 0x1388

    .line 743
    .line 744
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    .line 746
    .line 747
    goto :goto_a

    .line 748
    :cond_8
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    const v3, 0x7f0e011d

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 760
    .line 761
    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 773
    .line 774
    const-string v6, "#99000000"

    .line 775
    .line 776
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 781
    .line 782
    .line 783
    const v6, 0x7f0b0586

    .line 784
    .line 785
    .line 786
    invoke-static {v4, v5, v3, v1, v6}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    check-cast v4, Landroid/widget/TextView;

    .line 791
    .line 792
    const-string v5, "Please check your internet connection."

    .line 793
    .line 794
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    .line 796
    .line 797
    const v4, 0x7f0b014f

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    check-cast v1, Landroid/widget/Button;

    .line 805
    .line 806
    const v4, 0x7f1301ee

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    .line 815
    .line 816
    new-instance v4, Ll/c;

    .line 817
    .line 818
    const/16 v5, 0x15

    .line 819
    .line 820
    invoke-direct {v4, v5, v0, v3}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 827
    .line 828
    .line 829
    iget-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 830
    .line 831
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 832
    .line 833
    .line 834
    iget-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 835
    .line 836
    const v3, 0x7f1301b9

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    .line 845
    .line 846
    :goto_a
    iget-object v1, v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 847
    .line 848
    new-instance v2, LD1/i;

    .line 849
    .line 850
    const/4 v3, 0x5

    .line 851
    invoke-direct {v2, v0, v3}, LD1/i;-><init>(Ljava/lang/Object;I)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    .line 856
    .line 857
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 10
    .line 11
    iget-object v1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
