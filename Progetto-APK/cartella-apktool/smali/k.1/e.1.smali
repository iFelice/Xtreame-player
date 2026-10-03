.class public final Lk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lk/e;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk/e;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lk/e;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lk/e;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lb7/M0;

    .line 9
    .line 10
    sget-object v0, Lb7/M0;->e1:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, v1, Lb7/M0;->Y0:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lb7/M0;->Z0:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast v1, LP1/e;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    throw v0

    .line 41
    :pswitch_1
    check-cast v1, LP1/e;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    throw v0

    .line 48
    :pswitch_2
    check-cast v1, Ll/T;

    .line 49
    .line 50
    iget-object v0, v1, Ll/T;->m0:Ll/W;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-object v2, v1, Ll/T;->k0:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Ll/T;->s()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ll/M0;->h()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1}, Ll/M0;->dismiss()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_3
    check-cast v1, Ll/W;

    .line 78
    .line 79
    invoke-virtual {v1}, Ll/W;->getInternalPopup()Ll/V;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Ll/V;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getTextDirection()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getTextAlignment()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iget-object v3, v1, Ll/W;->L:Ll/V;

    .line 98
    .line 99
    invoke-interface {v3, v0, v2}, Ll/V;->l(II)V

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void

    .line 112
    :pswitch_4
    check-cast v1, Lk/F;

    .line 113
    .line 114
    invoke-virtual {v1}, Lk/F;->a()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget-object v0, v1, Lk/F;->O:Ll/R0;

    .line 121
    .line 122
    iget-boolean v2, v0, Ll/M0;->d0:Z

    .line 123
    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    iget-object v2, v1, Lk/F;->T:Landroid/view/View;

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v0}, Ll/M0;->h()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lk/F;->dismiss()V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_2
    return-void

    .line 145
    :pswitch_5
    check-cast v1, Lk/i;

    .line 146
    .line 147
    invoke-virtual {v1}, Lk/i;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    iget-object v0, v1, Lk/i;->O:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-lez v2, :cond_8

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Lk/h;

    .line 167
    .line 168
    iget-object v2, v2, Lk/h;->a:Ll/R0;

    .line 169
    .line 170
    iget-boolean v2, v2, Ll/M0;->d0:Z

    .line 171
    .line 172
    if-nez v2, :cond_8

    .line 173
    .line 174
    iget-object v2, v1, Lk/i;->V:Landroid/view/View;

    .line 175
    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_6

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lk/h;

    .line 200
    .line 201
    iget-object v1, v1, Lk/h;->a:Ll/R0;

    .line 202
    .line 203
    invoke-virtual {v1}, Ll/M0;->h()V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lk/i;->dismiss()V

    .line 208
    .line 209
    .line 210
    :cond_8
    return-void

    .line 211
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
