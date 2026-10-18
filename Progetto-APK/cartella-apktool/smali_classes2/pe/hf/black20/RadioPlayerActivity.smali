.class public Lpe/hf/black20/RadioPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/widget/ImageButton;

.field public H:Landroid/widget/ImageButton;

.field public I:Landroid/widget/TextView;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public final M:Lpe/hf/black20/RadioPlayerActivity;

.field public N:Landroid/widget/ImageView;

.field public O:Landroid/view/SurfaceView;

.field public P:Landroid/view/SurfaceHolder;

.field public Q:Lorg/videolan/libvlc/LibVLC;

.field public R:Lorg/videolan/libvlc/MediaPlayer;

.field public S:Lorg/videolan/libvlc/interfaces/IVLCVout;

.field public T:Lorg/videolan/libvlc/Media;

.field public final U:LN2/a;

.field public V:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/RadioPlayerActivity;->M:Lpe/hf/black20/RadioPlayerActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->Q:Lorg/videolan/libvlc/LibVLC;

    .line 8
    .line 9
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 10
    .line 11
    new-instance v0, LN2/a;

    .line 12
    .line 13
    const/16 v1, 0x12c

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, LN2/a;-><init>(IZ)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->U:LN2/a;

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lpe/hf/black20/RadioPlayerActivity;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "-vvv"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "--network-caching=35000"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "--live-caching==35000"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/videolan/libvlc/LibVLC;

    .line 29
    .line 30
    iget-object v2, p0, Lpe/hf/black20/RadioPlayerActivity;->M:Lpe/hf/black20/RadioPlayerActivity;

    .line 31
    .line 32
    invoke-direct {v1, v2, v0}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->Q:Lorg/videolan/libvlc/LibVLC;

    .line 36
    .line 37
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->O:Landroid/view/SurfaceView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->P:Landroid/view/SurfaceHolder;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->P:Landroid/view/SurfaceHolder;

    .line 50
    .line 51
    new-instance v2, LO5/d;

    .line 52
    .line 53
    invoke-direct {v2, p0, v1}, LO5/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    .line 60
    .line 61
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->Q:Lorg/videolan/libvlc/LibVLC;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 67
    .line 68
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->Q:Lorg/videolan/libvlc/LibVLC;

    .line 69
    .line 70
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->V:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    const-string v2, "agent"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v4, p0, Lpe/hf/black20/RadioPlayerActivity;->V:Landroid/content/SharedPreferences;

    .line 80
    .line 81
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lorg/videolan/libvlc/Media;

    .line 89
    .line 90
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->Q:Lorg/videolan/libvlc/LibVLC;

    .line 91
    .line 92
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->T:Lorg/videolan/libvlc/Media;

    .line 100
    .line 101
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 107
    .line 108
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->S:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 113
    .line 114
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->O:Landroid/view/SurfaceView;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->S:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 120
    .line 121
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 125
    .line 126
    new-instance v1, Lb7/m1;

    .line 127
    .line 128
    invoke-direct {v1, p0, p1}, Lb7/m1;-><init>(Lpe/hf/black20/RadioPlayerActivity;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 137
    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0046

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x1c

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const p1, 0x7f0b028a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->M:Lpe/hf/black20/RadioPlayerActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const v1, 0x7f0805f0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const v1, 0x7f08053b

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string p1, "pe.hf.black20"

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->V:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    const p1, 0x7f0b055c

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->I:Landroid/widget/TextView;

    .line 83
    .line 84
    const p1, 0x7f0b02a3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/ImageView;

    .line 92
    .line 93
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->N:Landroid/widget/ImageView;

    .line 94
    .line 95
    const p1, 0x7f0b0485

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/view/SurfaceView;

    .line 103
    .line 104
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->O:Landroid/view/SurfaceView;

    .line 105
    .line 106
    const p1, 0x7f0b0145

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageButton;

    .line 114
    .line 115
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 116
    .line 117
    const p1, 0x7f0b0146

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/ImageButton;

    .line 125
    .line 126
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 127
    .line 128
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 140
    .line 141
    const/high16 v3, 0x3f800000    # 1.0f

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 147
    .line 148
    const v3, 0x3e99999a    # 0.3f

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->G:Landroid/widget/ImageButton;

    .line 155
    .line 156
    new-instance v3, Lb7/l1;

    .line 157
    .line 158
    invoke-direct {v3, p0, v1}, Lb7/l1;-><init>(Lpe/hf/black20/RadioPlayerActivity;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->H:Landroid/widget/ImageButton;

    .line 165
    .line 166
    new-instance v1, Lb7/l1;

    .line 167
    .line 168
    invoke-direct {v1, p0, v2}, Lb7/l1;-><init>(Lpe/hf/black20/RadioPlayerActivity;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v1, "stream"

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->J:Ljava/lang/String;

    .line 189
    .line 190
    const-string v2, " "

    .line 191
    .line 192
    const-string v3, ""

    .line 193
    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->J:Ljava/lang/String;

    .line 199
    .line 200
    const-string v1, "radioname"

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->K:Ljava/lang/String;

    .line 207
    .line 208
    const-string v1, "stream_icon"

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->L:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->U:LN2/a;

    .line 221
    .line 222
    if-eqz p1, :cond_2

    .line 223
    .line 224
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const v0, 0x7f0809c3

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Lcom/bumptech/glide/l;

    .line 244
    .line 245
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->N:Landroid/widget/ImageView;

    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->L:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1}, LL2/a;->g()LL2/a;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/bumptech/glide/l;

    .line 274
    .line 275
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const v0, 0x7f08086d

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, LL2/a;->m(I)LL2/a;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Lcom/bumptech/glide/l;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, LL2/a;->f(I)LL2/a;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Lcom/bumptech/glide/l;

    .line 297
    .line 298
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->N:Landroid/widget/ImageView;

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 301
    .line 302
    .line 303
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v0, "PreparePlayer "

    .line 306
    .line 307
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->J:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    const-string v0, "XCIPTV_TAG"

    .line 320
    .line 321
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->I:Landroid/widget/TextView;

    .line 325
    .line 326
    iget-object v1, p0, Lpe/hf/black20/RadioPlayerActivity;->K:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    const-string p1, "Is Playing False"

    .line 332
    .line 333
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onDestroy()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/RadioPlayerActivity;->R:Lorg/videolan/libvlc/MediaPlayer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const-string v0, "was "

    .line 5
    .line 6
    const-string v1, "Permission: "

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const-string v3, "XCIPTV_TAG"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq p1, v2, :cond_3

    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    if-eq p1, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "External storage1"

    .line 19
    .line 20
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    aget p1, p3, v4

    .line 24
    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    aget-object p2, p2, v4

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    aget p2, p3, v4

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 p2, 0x17

    .line 55
    .line 56
    const-string p3, "Permission is granted2"

    .line 57
    .line 58
    const-string v0, "ContentValues"

    .line 59
    .line 60
    if-lt p1, p2, :cond_2

    .line 61
    .line 62
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string p2, "Permission is revoked2"

    .line 75
    .line 76
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    filled-new-array {p1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1, v2}, LD/c;->D(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const-string p1, "External storage2"

    .line 92
    .line 93
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    aget p1, p3, v4

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    aget-object p2, p2, v4

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    aget p2, p3, v4

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lpe/hf/black20/RadioPlayerActivity;->M:Lpe/hf/black20/RadioPlayerActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, LE1/a;->z(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, LE1/a;->A()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, LE1/a;->C()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    or-int/2addr v0, v1

    .line 60
    invoke-static {p1, v0}, LE1/a;->t(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, LE1/a;->s(Landroid/view/WindowInsetsController;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x1002

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xf06

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method
