.class public final Lb7/J;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/ChannelPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ChannelPickerActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/J;->a:I

    invoke-direct {p0, p1, v0}, Lb7/J;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/ChannelPickerActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, Lb7/J;->a:I

    iput-object p1, p0, Lb7/J;->b:Lpe/hf/black20/ChannelPickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a()V
    .locals 7

    .line 1
    iget v0, p0, Lb7/J;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/J;->b:Lpe/hf/black20/ChannelPickerActivity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "--------------category_id-----------------"

    .line 21
    .line 22
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "XCIPTV_TAG"

    .line 35
    .line 36
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "99999"

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v3, v1, Lpe/hf/black20/ChannelPickerActivity;->P:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, v1, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-static {v4, v3}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const-string v6, "all"

    .line 64
    .line 65
    invoke-static {v4, v5, v6, v3, v0}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 70
    .line 71
    :goto_0
    iput-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->I0:Lorg/json/JSONArray;

    .line 72
    .line 73
    new-instance v0, Lorg/json/JSONArray;

    .line 74
    .line 75
    iget-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->I0:Lorg/json/JSONArray;

    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v3, "ORT_WHICH_CAT"

    .line 88
    .line 89
    const-string v4, "TV"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 92
    .line 93
    .line 94
    iput-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->T:Ljava/util/ArrayList;

    .line 95
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->T:Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 104
    .line 105
    invoke-static {v0}, Lz4/q0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->T:Ljava/util/ArrayList;

    .line 110
    .line 111
    iput-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->J0:Lorg/json/JSONArray;

    .line 112
    .line 113
    new-instance v0, Lorg/json/JSONArray;

    .line 114
    .line 115
    iget-object v2, v1, Lpe/hf/black20/ChannelPickerActivity;->T:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, v1, Lpe/hf/black20/ChannelPickerActivity;->J0:Lorg/json/JSONArray;

    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Void;)V
    .locals 6

    .line 1
    iget v0, p0, Lb7/J;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lb7/J;->b:Lpe/hf/black20/ChannelPickerActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->G:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lb7/i1;

    .line 18
    .line 19
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->S:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1, v2, v0}, Lb7/i1;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->R:Landroid/widget/ListView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->R:Landroid/widget/ListView;

    .line 30
    .line 31
    new-instance v0, Lb7/f;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->G:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lb7/t;

    .line 51
    .line 52
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 53
    .line 54
    iget-object v1, v2, Lpe/hf/black20/ChannelPickerActivity;->T:Ljava/util/ArrayList;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {p1, v3, v0, v1}, Lb7/t;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v2, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->I:Lc7/d;

    .line 66
    .line 67
    iget-object v1, v2, Lpe/hf/black20/ChannelPickerActivity;->O:Lh7/i;

    .line 68
    .line 69
    iget-object v1, v1, Lh7/i;->a:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v5, v2, Lpe/hf/black20/ChannelPickerActivity;->O:Lh7/i;

    .line 77
    .line 78
    iget-object v5, v5, Lh7/i;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, "_live"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1, v1, v4}, Lc7/d;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v1, "yes"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const-string v1, "ORT_SELECTED_POS"

    .line 103
    .line 104
    const-string v4, "ORT_CAT_NAME"

    .line 105
    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    const-string p1, "99999"

    .line 109
    .line 110
    iput-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;

    .line 111
    .line 112
    const p1, 0x7f1301cc

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->M:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->M:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, v4, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 128
    .line 129
    .line 130
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v3, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    const/4 p1, 0x2

    .line 144
    :try_start_0
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->J0:Lorg/json/JSONArray;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v5, "category_name"

    .line 151
    .line 152
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->M:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v5, v2, Lpe/hf/black20/ChannelPickerActivity;->M:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 165
    .line 166
    .line 167
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->J0:Lorg/json/JSONArray;

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v4, "category_id"

    .line 174
    .line 175
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    :catch_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, p1, v1}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 186
    .line 187
    .line 188
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 191
    .line 192
    .line 193
    :goto_0
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 196
    .line 197
    .line 198
    new-instance p1, Lb7/J;

    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    invoke-direct {p1, v2, v0}, Lb7/J;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 202
    .line 203
    .line 204
    new-array v0, v3, [Ljava/lang/Void;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    .line 208
    .line 209
    iget-object p1, v2, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 210
    .line 211
    new-instance v0, Lb7/f;

    .line 212
    .line 213
    const/4 v1, 0x7

    .line 214
    invoke-direct {v0, p0, v1}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb7/J;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, [Ljava/lang/Void;

    .line 8
    .line 9
    invoke-virtual {p0}, Lb7/J;->a()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p0}, Lb7/J;->a()V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/J;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb7/J;->b(Ljava/lang/Void;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lb7/J;->b(Ljava/lang/Void;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/J;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb7/J;->b:Lpe/hf/black20/ChannelPickerActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->G:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lpe/hf/black20/ChannelPickerActivity;->G:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
