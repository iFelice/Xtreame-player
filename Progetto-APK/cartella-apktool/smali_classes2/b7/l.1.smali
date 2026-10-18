.class public final Lb7/l;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb7/l;->G:I

    .line 2
    .line 3
    iput-object p1, p0, Lb7/l;->H:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Lb7/l;->G:I

    .line 2
    .line 3
    const-string v0, "onDoubleTap: "

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return v2

    .line 12
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :pswitch_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Lb7/l;->G:I

    .line 2
    .line 3
    const-string v0, "onDown: "

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return v2

    .line 12
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :pswitch_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget p1, p0, Lb7/l;->G:I

    .line 2
    .line 3
    const-string p2, "onFling: "

    .line 4
    .line 5
    const-string p3, "XCIPTV_TAG"

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return p4

    .line 12
    :pswitch_0
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return p4

    .line 16
    :pswitch_1
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return p4

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/l;->G:I

    .line 2
    .line 3
    const-string v0, "onLongPress-----: "

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget p1, p0, Lb7/l;->G:I

    .line 2
    .line 3
    const-string p2, "onScroll: "

    .line 4
    .line 5
    const-string p3, "XCIPTV_TAG"

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    return p4

    .line 12
    :pswitch_0
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return p4

    .line 16
    :pswitch_1
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return p4

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lb7/l;->G:I

    .line 5
    .line 6
    const-string v2, "onSingleTapConfirmed: "

    .line 7
    .line 8
    const-string v3, "XCIPTV_TAG"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v5, p0, Lb7/l;->H:Landroid/app/Activity;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string p1, "ORT_WHICH_CAT"

    .line 17
    .line 18
    const-string v0, "TV"

    .line 19
    .line 20
    const-string v1, "VOD"

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "1"

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-string v1, "SERIES"

    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p1, "ORT_LIVE_TV_EPG_MODE"

    .line 40
    .line 41
    const-string v0, "yes"

    .line 42
    .line 43
    invoke-static {p1, v0, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    check-cast v5, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 50
    .line 51
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->j0:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->Z()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->B()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    check-cast v5, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 68
    .line 69
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->Z()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    check-cast v5, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 76
    .line 77
    iget-object p1, v5, Lpe/hf/black20/PlayStreamEPGActivity;->j0:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->Z()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {v5}, Lpe/hf/black20/PlayStreamEPGActivity;->B()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return v4

    .line 93
    :pswitch_0
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    check-cast v5, Lpe/hf/black20/MultiScreenActivityEXO;

    .line 97
    .line 98
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 99
    .line 100
    const-string v2, "p1"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 130
    .line 131
    const-string v2, "p2"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 161
    .line 162
    const-string v2, "p3"

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_7

    .line 169
    .line 170
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 192
    .line 193
    const-string v2, "p4"

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_8

    .line 200
    .line 201
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    iget-object v1, v5, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 228
    .line 229
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, v5, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    :goto_2
    return v4

    .line 243
    :pswitch_1
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    check-cast v5, Lpe/hf/black20/CatchupPlayerActivity;

    .line 247
    .line 248
    iget-object v1, v5, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_a

    .line 255
    .line 256
    iget-object v1, v5, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_9

    .line 263
    .line 264
    iget-object v0, v5, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 265
    .line 266
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_9
    iget-object p1, v5, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    :goto_3
    iget-object p1, v5, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Lpe/hf/black20/CatchupPlayerActivity;->a()V

    .line 281
    .line 282
    .line 283
    :cond_a
    return v4

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
