.class public final Lk7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/util/List;

.field public final synthetic I:LV6/b;

.field public final synthetic J:Landroid/widget/LinearLayout;

.field public final synthetic K:Ln2/t;


# direct methods
.method public synthetic constructor <init>(Ln2/t;Ljava/util/ArrayList;LV6/b;Landroid/widget/LinearLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lk7/e;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk7/e;->K:Ln2/t;

    .line 7
    .line 8
    iput-object p2, p0, Lk7/e;->H:Ljava/util/List;

    .line 9
    .line 10
    iput-object p3, p0, Lk7/e;->I:LV6/b;

    .line 11
    .line 12
    iput-object p4, p0, Lk7/e;->J:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lk7/e;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lk7/e;->J:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iget-object v2, p0, Lk7/e;->I:LV6/b;

    .line 6
    .line 7
    iget-object v3, p0, Lk7/e;->K:Ln2/t;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, Lk7/e;->H:Ljava/util/List;

    .line 11
    .line 12
    const-string v6, ""

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, LU6/d;

    .line 18
    .line 19
    invoke-direct {v0}, LU6/d;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v6, v0, LU6/d;->G:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v6, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Ljava/lang/Double;

    .line 45
    .line 46
    add-int/lit8 v8, v6, 0x1

    .line 47
    .line 48
    int-to-double v9, v6

    .line 49
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    invoke-virtual {v0, v9, v10, v6, v7}, LU6/d;->a(DD)V

    .line 54
    .line 55
    .line 56
    move v6, v8

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v5, LU6/c;

    .line 59
    .line 60
    invoke-direct {v5}, LU6/c;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v0}, LU6/c;->a(LU6/d;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, LW4/a;

    .line 69
    .line 70
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, v5, v2}, Lz4/q0;->s(Landroid/content/Context;LU6/c;LV6/b;)LS6/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    new-instance v0, LU6/d;

    .line 87
    .line 88
    invoke-direct {v0}, LU6/d;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v6, v0, LU6/d;->G:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v6, 0x0

    .line 103
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/Double;

    .line 114
    .line 115
    if-nez v6, :cond_1

    .line 116
    .line 117
    const-wide/16 v7, 0x0

    .line 118
    .line 119
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    :cond_1
    add-int/lit8 v8, v6, 0x1

    .line 124
    .line 125
    int-to-double v9, v6

    .line 126
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    invoke-virtual {v0, v9, v10, v6, v7}, LU6/d;->a(DD)V

    .line 131
    .line 132
    .line 133
    move v6, v8

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    new-instance v5, LU6/c;

    .line 136
    .line 137
    invoke-direct {v5}, LU6/c;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v0}, LU6/c;->a(LU6/d;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, LW4/a;

    .line 146
    .line 147
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0, v5, v2}, Lz4/q0;->s(Landroid/content/Context;LU6/c;LV6/b;)LS6/a;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_1
    new-instance v0, LU6/d;

    .line 164
    .line 165
    invoke-direct {v0}, LU6/d;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v6, v0, LU6/d;->G:Ljava/lang/String;

    .line 169
    .line 170
    new-instance v6, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    const/4 v6, 0x0

    .line 180
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_3

    .line 185
    .line 186
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Ljava/lang/Double;

    .line 191
    .line 192
    add-int/lit8 v8, v6, 0x1

    .line 193
    .line 194
    int-to-double v9, v6

    .line 195
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 196
    .line 197
    .line 198
    move-result-wide v6

    .line 199
    invoke-virtual {v0, v9, v10, v6, v7}, LU6/d;->a(DD)V

    .line 200
    .line 201
    .line 202
    move v6, v8

    .line 203
    goto :goto_2

    .line 204
    :cond_3
    new-instance v5, LU6/c;

    .line 205
    .line 206
    invoke-direct {v5}, LU6/c;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v0}, LU6/c;->a(LU6/d;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, LW4/a;

    .line 215
    .line 216
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0, v5, v2}, Lz4/q0;->s(Landroid/content/Context;LU6/c;LV6/b;)LS6/a;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
