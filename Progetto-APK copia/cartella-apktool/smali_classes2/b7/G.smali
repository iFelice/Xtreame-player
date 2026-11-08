.class public final Lb7/G;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public c:Ljava/lang/Object;

.field public final d:LN2/a;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/util/ArrayList;

.field public i:Ljava/util/HashMap;

.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILpe/hf/black20/ChannelListActivity;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iput p1, p0, Lb7/G;->a:I

    const-string v0, "default"

    const/16 v1, 0x12c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb7/G;->j:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Lb7/G;->k:Ljava/lang/String;

    .line 6
    new-instance p1, LN2/a;

    invoke-direct {p1, v1, v2}, LN2/a;-><init>(IZ)V

    .line 7
    iput-object p1, p0, Lb7/G;->d:LN2/a;

    .line 8
    iput-object p2, p0, Lb7/G;->b:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lb7/G;->h:Ljava/util/ArrayList;

    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb7/G;->j:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lb7/G;->k:Ljava/lang/String;

    .line 14
    new-instance p1, LN2/a;

    invoke-direct {p1, v1, v2}, LN2/a;-><init>(IZ)V

    .line 15
    iput-object p1, p0, Lb7/G;->d:LN2/a;

    .line 16
    iput-object p2, p0, Lb7/G;->b:Landroid/content/Context;

    .line 17
    iput-object p3, p0, Lb7/G;->h:Ljava/util/ArrayList;

    return-void

    .line 18
    :cond_1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance p1, LN2/a;

    invoke-direct {p1, v1, v2}, LN2/a;-><init>(IZ)V

    .line 20
    iput-object p1, p0, Lb7/G;->d:LN2/a;

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb7/G;->j:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lb7/G;->k:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lb7/G;->b:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lb7/G;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lpe/hf/black20/epg/EPGActivityXMLTV;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 1

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lb7/G;->a:I

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 29
    const-string v0, "yyyyMMddHHmmss"

    invoke-static {v0}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    move-result-object v0

    iput-object v0, p0, Lb7/G;->c:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb7/G;->e:Ljava/lang/Object;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lb7/G;->k:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lb7/G;->d:LN2/a;

    .line 34
    iput-object p1, p0, Lb7/G;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lb7/G;->h:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lb7/G;->g:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Data length --- "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XCIPTV_TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->z0:Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    :try_start_0
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->z0:Lorg/json/JSONArray;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v4, "stream_id"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v4, "direct_source"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sput-object v4, Lb7/G;->l:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sput-object v4, Lb7/G;->m:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sput-object v3, Lb7/G;->n:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb7/G;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f090004

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 20
    .line 21
    .line 22
    sget v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->s0:I

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "ORT_isDemo"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Program "

    .line 42
    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string p2, "bg_epg_update"

    .line 65
    .line 66
    const-string v0, "yes"

    .line 67
    .line 68
    invoke-static {p2, v0, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const/high16 v0, 0x41600000    # 14.0f

    .line 73
    .line 74
    const-string v1, "name"

    .line 75
    .line 76
    const-string v2, "::"

    .line 77
    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lb7/G;->e:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ld7/g;

    .line 94
    .line 95
    iget-object v3, v3, Ld7/g;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lb7/G;->e:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    check-cast p4, Ld7/g;

    .line 126
    .line 127
    iget-object p4, p4, Ld7/g;->c:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lb7/G;->j:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Ljava/util/HashMap;

    .line 158
    .line 159
    const-string v4, "start"

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lb7/G;->j:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    check-cast p4, Ljava/util/HashMap;

    .line 194
    .line 195
    const-string v1, "channel"

    .line 196
    .line 197
    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p4

    .line 201
    check-cast p4, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    .line 218
    .line 219
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb7/G;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    iget-object v2, p0, Lb7/G;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    const-string v4, "#99000000"

    .line 33
    .line 34
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const v4, 0x7f0b0586

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3, v1, v0, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    const p1, 0x7f0b014f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/Button;

    .line 61
    .line 62
    iget-object v0, p0, Lb7/G;->b:Landroid/content/Context;

    .line 63
    .line 64
    const v2, 0x7f1301ee

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ld7/b;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v0, v1, v2}, Ld7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->B0:Lcom/google/android/gms/internal/cast/X;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 6
    .line 7
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->B0:Lcom/google/android/gms/internal/cast/X;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/cast/X;

    .line 26
    .line 27
    const/16 v1, 0x1b

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->B0:Lcom/google/android/gms/internal/cast/X;

    .line 33
    .line 34
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 35
    .line 36
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->B0:Lcom/google/android/gms/internal/cast/X;

    .line 37
    .line 38
    const-wide/16 v2, 0x1f4

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final e(IIIILandroid/widget/FrameLayout;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lb7/G;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "pe.hf.black20"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 13
    .line 14
    if-ge v1, v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v5, p0, Lb7/G;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    invoke-direct {v5, p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    mul-int/lit8 v6, p2, 0x2

    .line 29
    .line 30
    sub-int v6, p1, v6

    .line 31
    .line 32
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 33
    .line 34
    sget v6, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 35
    .line 36
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    .line 38
    add-int v6, v3, p2

    .line 39
    .line 40
    invoke-virtual {v5, v6, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    add-int/2addr v3, p1

    .line 47
    iget-object v5, p0, Lb7/G;->b:Landroid/content/Context;

    .line 48
    .line 49
    const v6, 0x7f080557

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/high16 v5, 0x41200000    # 10.0f

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Lb7/G;->b:Landroid/content/Context;

    .line 65
    .line 66
    const v6, 0x7f090004

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v6}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    .line 75
    .line 76
    const/16 v5, 0xa

    .line 77
    .line 78
    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    const/16 v5, 0x11

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    .line 85
    .line 86
    const v5, 0x7f130153

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v6, "0::"

    .line 95
    .line 96
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lb7/G;->i:Ljava/util/HashMap;

    .line 100
    .line 101
    const-string v7, "name"

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    const/4 v5, 0x1

    .line 123
    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    .line 125
    .line 126
    new-instance v6, Ld7/c;

    .line 127
    .line 128
    invoke-direct {v6, p0, v0, v2}, Ld7/c;-><init>(Lb7/G;Landroid/content/SharedPreferences;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Ld7/d;

    .line 138
    .line 139
    invoke-direct {v5, p0, v2}, Ld7/d;-><init>(Lb7/G;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    .line 144
    .line 145
    new-instance v5, Ld7/e;

    .line 146
    .line 147
    invoke-direct {v5, p0, v2}, Ld7/e;-><init>(Lb7/G;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_0
    return-void
.end method

.method public final f(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb7/G;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "pe.hf.black20"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ld7/c;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0, v1}, Ld7/c;-><init>(Lb7/G;Landroid/content/SharedPreferences;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ld7/d;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Ld7/d;-><init>(Lb7/G;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ld7/e;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Ld7/e;-><init>(Lb7/G;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/G;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/G;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lb7/G;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lb7/G;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lb7/G;->h:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const v2, 0x7f08086d

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "stream_id"

    .line 15
    .line 16
    const-string v5, "http://:"

    .line 17
    .line 18
    const-string v7, "ORT_PROFILE_SERVER"

    .line 19
    .line 20
    const-string v8, "stream_icon"

    .line 21
    .line 22
    iget v9, v6, Lb7/G;->a:I

    .line 23
    .line 24
    const-string v14, "yes"

    .line 25
    .line 26
    const-string v15, "\\\\"

    .line 27
    .line 28
    const-string v13, "%20"

    .line 29
    .line 30
    const-string v2, "name"

    .line 31
    .line 32
    const-wide/high16 v18, 0x3fe8000000000000L    # 0.75

    .line 33
    .line 34
    const-string v11, "ORT_PROFILE"

    .line 35
    .line 36
    const-string v10, "Default (XC)"

    .line 37
    .line 38
    const-string v12, " "

    .line 39
    .line 40
    move-object/from16 v20, v4

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    move-object/from16 v21, v5

    .line 45
    .line 46
    const-string v5, "layout_inflater"

    .line 47
    .line 48
    packed-switch v9, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/LayoutInflater;

    .line 58
    .line 59
    const v3, 0x7f0e0030

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-virtual {v2, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    iget-object v1, v6, Lb7/G;->h:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/util/HashMap;

    .line 74
    .line 75
    iput-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 76
    .line 77
    const v0, 0x7f0b02d3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v8, v0

    .line 85
    check-cast v8, Landroid/widget/FrameLayout;

    .line 86
    .line 87
    invoke-static {}, Lpe/hf/black20/util/Methods;->G()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, v6, Lb7/G;->b:Landroid/content/Context;

    .line 92
    .line 93
    const-string v2, "pe.hf.black20"

    .line 94
    .line 95
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 96
    .line 97
    .line 98
    sget v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->l0:I

    .line 99
    .line 100
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 101
    .line 102
    const-string v3, "yyyyMMddHHmmss"

    .line 103
    .line 104
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lpe/hf/black20/util/Methods;->F()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 112
    .line 113
    .line 114
    move-result-object v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 116
    :catch_0
    const/4 v5, 0x0

    .line 117
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v10, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 122
    .line 123
    .line 124
    const/16 v5, 0xb

    .line 125
    .line 126
    invoke-virtual {v10, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lb7/G;->c()V

    .line 137
    .line 138
    .line 139
    iget-object v1, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 140
    .line 141
    const-string v2, "epg_channel_id"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_10

    .line 154
    .line 155
    iget-object v1, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Ljava/lang/String;

    .line 162
    .line 163
    const-string v4, "null"

    .line 164
    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_10

    .line 170
    .line 171
    iget-object v1, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-nez v1, :cond_0

    .line 178
    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :cond_0
    iget-object v1, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    .line 187
    .line 188
    :try_start_1
    iget-object v1, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v1, Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_2

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ld7/g;

    .line 207
    .line 208
    iget-object v5, v4, Ld7/g;->c:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v10, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_1

    .line 221
    .line 222
    iget-object v5, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v5, Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_2
    iget-object v1, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v1, Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-lez v1, :cond_f

    .line 239
    .line 240
    const/4 v1, 0x0

    .line 241
    const/4 v2, 0x0

    .line 242
    const/4 v4, 0x0

    .line 243
    const/4 v5, 0x0

    .line 244
    :goto_2
    iget-object v10, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v10, Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    if-ge v1, v10, :cond_e

    .line 253
    .line 254
    iget-object v10, v6, Lb7/G;->k:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v11, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v11, Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    check-cast v11, Ld7/g;

    .line 265
    .line 266
    iget-object v11, v11, Ld7/g;->a:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-nez v10, :cond_d

    .line 273
    .line 274
    iget-object v10, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v10, Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    check-cast v10, Ld7/g;

    .line 283
    .line 284
    iget-object v10, v10, Ld7/g;->a:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v10, v6, Lb7/G;->k:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lb7/G;->c()V

    .line 289
    .line 290
    .line 291
    iget-object v10, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v10, Ljava/util/List;

    .line 294
    .line 295
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    check-cast v10, Ld7/g;

    .line 300
    .line 301
    iget-object v10, v10, Ld7/g;->a:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v10}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    iget-object v11, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v11, Ljava/util/List;

    .line 310
    .line 311
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    check-cast v11, Ld7/g;

    .line 316
    .line 317
    iget-object v11, v11, Ld7/g;->b:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v11}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v13

    .line 327
    new-instance v14, Ljava/text/SimpleDateFormat;

    .line 328
    .line 329
    invoke-direct {v14, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    .line 330
    .line 331
    .line 332
    const/4 v15, 0x0

    .line 333
    :try_start_2
    aget-object v13, v13, v15

    .line 334
    .line 335
    invoke-virtual {v14, v13}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 336
    .line 337
    .line 338
    move-result-object v13
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 339
    :try_start_3
    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 340
    .line 341
    .line 342
    move-result-object v14
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    .line 343
    goto :goto_3

    .line 344
    :catch_1
    const/4 v13, 0x0

    .line 345
    :catch_2
    const/4 v14, 0x0

    .line 346
    :goto_3
    :try_start_4
    invoke-virtual {v13, v14}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 347
    .line 348
    .line 349
    move-result v15
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    .line 350
    const-string v9, "larger"

    .line 351
    .line 352
    if-eqz v15, :cond_3

    .line 353
    .line 354
    move-object v13, v9

    .line 355
    goto :goto_4

    .line 356
    :cond_3
    :try_start_5
    invoke-virtual {v13, v14}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    if-eqz v13, :cond_4

    .line 361
    .line 362
    const-string v13, "smaller"

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_4
    const-string v13, "d1d2"

    .line 366
    .line 367
    :goto_4
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_d

    .line 372
    .line 373
    add-int/lit8 v2, v2, 0x1

    .line 374
    .line 375
    iget-object v9, v6, Lb7/G;->c:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v9, LZ6/b;

    .line 378
    .line 379
    invoke-virtual {v9, v10}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    iget-object v10, v6, Lb7/G;->c:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v10, LZ6/b;

    .line 386
    .line 387
    invoke-virtual {v10, v11}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    new-instance v11, Landroid/widget/TextView;

    .line 392
    .line 393
    iget-object v13, v6, Lb7/G;->b:Landroid/content/Context;

    .line 394
    .line 395
    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v9, v10}, Lpe/hf/black20/util/Methods;->h(Ljava/util/Date;Ljava/util/Date;)I

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    iget-object v13, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v13, Ljava/util/List;

    .line 405
    .line 406
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    check-cast v13, Ld7/g;

    .line 411
    .line 412
    iget-object v13, v13, Ld7/g;->d:Ljava/lang/String;

    .line 413
    .line 414
    const/16 v15, 0x3c

    .line 415
    .line 416
    if-nez v4, :cond_9

    .line 417
    .line 418
    iget-object v4, v6, Lb7/G;->c:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v4, LZ6/b;

    .line 421
    .line 422
    invoke-virtual {v4, v0}, LZ6/b;->b(Ljava/lang/String;)Ljava/util/Date;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-static {v4, v10}, Lpe/hf/black20/util/Methods;->h(Ljava/util/Date;Ljava/util/Date;)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-le v4, v15, :cond_7

    .line 431
    .line 432
    rem-int/lit8 v10, v4, 0x3c

    .line 433
    .line 434
    const/4 v15, 0x0

    .line 435
    :goto_5
    if-ge v15, v4, :cond_6

    .line 436
    .line 437
    new-instance v14, Landroid/widget/TextView;

    .line 438
    .line 439
    iget-object v9, v6, Lb7/G;->b:Landroid/content/Context;

    .line 440
    .line 441
    invoke-direct {v14, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 445
    .line 446
    move-object/from16 v17, v0

    .line 447
    .line 448
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 449
    .line 450
    move/from16 v18, v2

    .line 451
    .line 452
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 453
    .line 454
    invoke-direct {v9, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 455
    .line 456
    .line 457
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 458
    .line 459
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 460
    .line 461
    mul-int/lit8 v2, v2, 0x2

    .line 462
    .line 463
    sub-int/2addr v0, v2

    .line 464
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 465
    .line 466
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 467
    .line 468
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 469
    .line 470
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 471
    .line 472
    add-int v2, v5, v0

    .line 473
    .line 474
    invoke-virtual {v9, v2, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v14, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    .line 479
    .line 480
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 481
    .line 482
    add-int/2addr v5, v0

    .line 483
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 484
    .line 485
    const v2, 0x7f080558

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v14, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .line 494
    .line 495
    if-nez v15, :cond_5

    .line 496
    .line 497
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 498
    .line 499
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v14, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    .line 505
    .line 506
    goto :goto_6

    .line 507
    :cond_5
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 508
    .line 509
    const v2, 0x7f080557

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v14, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    .line 518
    .line 519
    :goto_6
    invoke-virtual {v6, v14, v13, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 520
    .line 521
    .line 522
    const/4 v0, 0x1

    .line 523
    invoke-virtual {v14, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6, v14}, Lb7/G;->f(Landroid/widget/TextView;)V

    .line 527
    .line 528
    .line 529
    add-int/lit8 v15, v15, 0x3c

    .line 530
    .line 531
    move-object/from16 v0, v17

    .line 532
    .line 533
    move/from16 v2, v18

    .line 534
    .line 535
    goto :goto_5

    .line 536
    :cond_6
    move-object/from16 v17, v0

    .line 537
    .line 538
    move/from16 v18, v2

    .line 539
    .line 540
    if-lez v10, :cond_8

    .line 541
    .line 542
    new-instance v0, Landroid/widget/TextView;

    .line 543
    .line 544
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 545
    .line 546
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 547
    .line 548
    .line 549
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 550
    .line 551
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 552
    .line 553
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 554
    .line 555
    invoke-direct {v2, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 556
    .line 557
    .line 558
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 559
    .line 560
    mul-int v4, v4, v10

    .line 561
    .line 562
    const/16 v9, 0x3c

    .line 563
    .line 564
    div-int/2addr v4, v9

    .line 565
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 566
    .line 567
    mul-int/lit8 v9, v9, 0x2

    .line 568
    .line 569
    sub-int/2addr v4, v9

    .line 570
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 571
    .line 572
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 573
    .line 574
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 575
    .line 576
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 577
    .line 578
    add-int v9, v5, v4

    .line 579
    .line 580
    invoke-virtual {v2, v9, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    .line 585
    .line 586
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 587
    .line 588
    mul-int v10, v10, v2

    .line 589
    .line 590
    const/16 v2, 0x3c

    .line 591
    .line 592
    div-int/2addr v10, v2

    .line 593
    add-int/2addr v5, v10

    .line 594
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 595
    .line 596
    const v4, 0x7f080557

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v6, v0, v13, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 607
    .line 608
    .line 609
    const/4 v2, 0x1

    .line 610
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v0}, Lb7/G;->f(Landroid/widget/TextView;)V

    .line 614
    .line 615
    .line 616
    goto :goto_7

    .line 617
    :cond_7
    move-object/from16 v17, v0

    .line 618
    .line 619
    move/from16 v18, v2

    .line 620
    .line 621
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    .line 623
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 624
    .line 625
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 626
    .line 627
    invoke-direct {v0, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 628
    .line 629
    .line 630
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 631
    .line 632
    mul-int v2, v2, v4

    .line 633
    .line 634
    const/16 v9, 0x3c

    .line 635
    .line 636
    div-int/2addr v2, v9

    .line 637
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 638
    .line 639
    mul-int/lit8 v9, v9, 0x2

    .line 640
    .line 641
    sub-int/2addr v2, v9

    .line 642
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 643
    .line 644
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 645
    .line 646
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 647
    .line 648
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 649
    .line 650
    add-int v9, v5, v2

    .line 651
    .line 652
    invoke-virtual {v0, v9, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    .line 657
    .line 658
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 659
    .line 660
    const v2, 0x7f080558

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 668
    .line 669
    .line 670
    sget v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 671
    .line 672
    mul-int v4, v4, v0

    .line 673
    .line 674
    const/16 v0, 0x3c

    .line 675
    .line 676
    div-int/2addr v4, v0

    .line 677
    add-int/2addr v5, v4

    .line 678
    invoke-virtual {v6, v11, v13, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 679
    .line 680
    .line 681
    :cond_8
    :goto_7
    move-object/from16 v16, v3

    .line 682
    .line 683
    const/4 v4, 0x1

    .line 684
    goto/16 :goto_9

    .line 685
    .line 686
    :cond_9
    move-object/from16 v17, v0

    .line 687
    .line 688
    move/from16 v18, v2

    .line 689
    .line 690
    iget-object v0, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v0, Ljava/util/List;

    .line 693
    .line 694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    check-cast v0, Ld7/g;

    .line 699
    .line 700
    iget-object v0, v0, Ld7/g;->d:Ljava/lang/String;

    .line 701
    .line 702
    const/16 v2, 0x3c

    .line 703
    .line 704
    if-le v9, v2, :cond_b

    .line 705
    .line 706
    rem-int/lit8 v2, v9, 0x3c

    .line 707
    .line 708
    const/4 v10, 0x0

    .line 709
    :goto_8
    if-ge v10, v9, :cond_a

    .line 710
    .line 711
    new-instance v13, Landroid/widget/TextView;

    .line 712
    .line 713
    iget-object v14, v6, Lb7/G;->b:Landroid/content/Context;

    .line 714
    .line 715
    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 716
    .line 717
    .line 718
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 719
    .line 720
    sget v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 721
    .line 722
    move-object/from16 v16, v3

    .line 723
    .line 724
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 725
    .line 726
    invoke-direct {v14, v15, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 727
    .line 728
    .line 729
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 730
    .line 731
    sget v15, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 732
    .line 733
    mul-int/lit8 v15, v15, 0x2

    .line 734
    .line 735
    sub-int/2addr v3, v15

    .line 736
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 737
    .line 738
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 739
    .line 740
    iput v3, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 741
    .line 742
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 743
    .line 744
    add-int v15, v5, v3

    .line 745
    .line 746
    invoke-virtual {v14, v15, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    .line 751
    .line 752
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 753
    .line 754
    add-int/2addr v5, v3

    .line 755
    iget-object v3, v6, Lb7/G;->b:Landroid/content/Context;

    .line 756
    .line 757
    const v14, 0x7f080557

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v6, v13, v0, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 768
    .line 769
    .line 770
    const/4 v3, 0x1

    .line 771
    invoke-virtual {v13, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6, v13}, Lb7/G;->f(Landroid/widget/TextView;)V

    .line 775
    .line 776
    .line 777
    add-int/lit8 v10, v10, 0x3c

    .line 778
    .line 779
    move-object/from16 v3, v16

    .line 780
    .line 781
    goto :goto_8

    .line 782
    :cond_a
    move-object/from16 v16, v3

    .line 783
    .line 784
    if-lez v2, :cond_c

    .line 785
    .line 786
    new-instance v3, Landroid/widget/TextView;

    .line 787
    .line 788
    iget-object v9, v6, Lb7/G;->b:Landroid/content/Context;

    .line 789
    .line 790
    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 791
    .line 792
    .line 793
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 794
    .line 795
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 796
    .line 797
    sget v13, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 798
    .line 799
    invoke-direct {v9, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 800
    .line 801
    .line 802
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 803
    .line 804
    mul-int v10, v10, v2

    .line 805
    .line 806
    const/16 v13, 0x3c

    .line 807
    .line 808
    div-int/2addr v10, v13

    .line 809
    sget v13, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 810
    .line 811
    mul-int/lit8 v13, v13, 0x2

    .line 812
    .line 813
    sub-int/2addr v10, v13

    .line 814
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 815
    .line 816
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 817
    .line 818
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 819
    .line 820
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 821
    .line 822
    add-int v13, v5, v10

    .line 823
    .line 824
    invoke-virtual {v9, v13, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    .line 829
    .line 830
    sget v9, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 831
    .line 832
    mul-int v2, v2, v9

    .line 833
    .line 834
    const/16 v9, 0x3c

    .line 835
    .line 836
    div-int/2addr v2, v9

    .line 837
    add-int/2addr v5, v2

    .line 838
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 839
    .line 840
    const v9, 0x7f080557

    .line 841
    .line 842
    .line 843
    invoke-virtual {v2, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v6, v3, v0, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 851
    .line 852
    .line 853
    const/4 v0, 0x1

    .line 854
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v6, v3}, Lb7/G;->f(Landroid/widget/TextView;)V

    .line 858
    .line 859
    .line 860
    goto :goto_9

    .line 861
    :cond_b
    move-object/from16 v16, v3

    .line 862
    .line 863
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 864
    .line 865
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 866
    .line 867
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 868
    .line 869
    invoke-direct {v2, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 870
    .line 871
    .line 872
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 873
    .line 874
    mul-int v3, v3, v9

    .line 875
    .line 876
    const/16 v10, 0x3c

    .line 877
    .line 878
    div-int/2addr v3, v10

    .line 879
    sget v10, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 880
    .line 881
    mul-int/lit8 v10, v10, 0x2

    .line 882
    .line 883
    sub-int/2addr v3, v10

    .line 884
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 885
    .line 886
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 887
    .line 888
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 889
    .line 890
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 891
    .line 892
    add-int v10, v5, v3

    .line 893
    .line 894
    invoke-virtual {v2, v10, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    .line 899
    .line 900
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 901
    .line 902
    mul-int v9, v9, v2

    .line 903
    .line 904
    const/16 v2, 0x3c

    .line 905
    .line 906
    div-int/2addr v9, v2

    .line 907
    add-int/2addr v5, v9

    .line 908
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 909
    .line 910
    const v3, 0x7f080557

    .line 911
    .line 912
    .line 913
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    invoke-virtual {v11, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v6, v11, v0, v8, v1}, Lb7/G;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/FrameLayout;I)V

    .line 921
    .line 922
    .line 923
    :cond_c
    :goto_9
    const/high16 v0, 0x41600000    # 14.0f

    .line 924
    .line 925
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 926
    .line 927
    .line 928
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 929
    .line 930
    const v2, 0x7f090004

    .line 931
    .line 932
    .line 933
    invoke-static {v0, v2}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v6, v11}, Lb7/G;->f(Landroid/widget/TextView;)V

    .line 941
    .line 942
    .line 943
    move/from16 v2, v18

    .line 944
    .line 945
    goto :goto_a

    .line 946
    :cond_d
    move-object/from16 v17, v0

    .line 947
    .line 948
    move-object/from16 v16, v3

    .line 949
    .line 950
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 951
    .line 952
    move-object/from16 v3, v16

    .line 953
    .line 954
    move-object/from16 v0, v17

    .line 955
    .line 956
    goto/16 :goto_2

    .line 957
    .line 958
    :cond_e
    if-nez v2, :cond_11

    .line 959
    .line 960
    :cond_f
    sget v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 961
    .line 962
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 963
    .line 964
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 965
    .line 966
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 967
    .line 968
    move-object/from16 v0, p0

    .line 969
    .line 970
    move-object v5, v8

    .line 971
    invoke-virtual/range {v0 .. v5}, Lb7/G;->e(IIIILandroid/widget/FrameLayout;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    .line 972
    .line 973
    .line 974
    goto :goto_c

    .line 975
    :cond_10
    :goto_b
    sget v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 976
    .line 977
    sget v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 978
    .line 979
    sget v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 980
    .line 981
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 982
    .line 983
    move-object/from16 v0, p0

    .line 984
    .line 985
    move-object v5, v8

    .line 986
    invoke-virtual/range {v0 .. v5}, Lb7/G;->e(IIIILandroid/widget/FrameLayout;)V

    .line 987
    .line 988
    .line 989
    :catch_3
    :cond_11
    :goto_c
    return-object v7

    .line 990
    :pswitch_0
    new-instance v7, Lc7/d;

    .line 991
    .line 992
    iget-object v8, v6, Lb7/G;->b:Landroid/content/Context;

    .line 993
    .line 994
    invoke-direct {v7, v8}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 995
    .line 996
    .line 997
    iput-object v7, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 998
    .line 999
    new-instance v7, Lc7/a;

    .line 1000
    .line 1001
    iget-object v8, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1002
    .line 1003
    const/4 v9, 0x0

    .line 1004
    invoke-direct {v7, v8, v9}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v11, v10, v7}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v7

    .line 1011
    iput-object v7, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1012
    .line 1013
    iget-object v7, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1014
    .line 1015
    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    check-cast v5, Landroid/view/LayoutInflater;

    .line 1020
    .line 1021
    const v7, 0x7f0e0057

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v5, v7, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    iget-object v5, v6, Lb7/G;->h:Ljava/util/ArrayList;

    .line 1029
    .line 1030
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    check-cast v0, Ljava/util/HashMap;

    .line 1035
    .line 1036
    iput-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1037
    .line 1038
    const v0, 0x7f0b051d

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    check-cast v0, Landroid/widget/TextView;

    .line 1046
    .line 1047
    const v5, 0x7f0b028b

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    check-cast v5, Landroid/widget/ImageView;

    .line 1055
    .line 1056
    const v7, 0x7f0b0292

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    check-cast v7, Landroid/widget/ImageView;

    .line 1064
    .line 1065
    const v8, 0x7f0b0155

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    check-cast v8, Landroidx/cardview/widget/CardView;

    .line 1073
    .line 1074
    sget v8, Lpe/hf/black20/CategoriesActivity;->K0:I

    .line 1075
    .line 1076
    int-to-double v8, v8

    .line 1077
    mul-double v8, v8, v18

    .line 1078
    .line 1079
    double-to-int v8, v8

    .line 1080
    const/4 v9, 0x6

    .line 1081
    div-int/2addr v8, v9

    .line 1082
    int-to-double v9, v8

    .line 1083
    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    .line 1084
    .line 1085
    mul-double v9, v9, v16

    .line 1086
    .line 1087
    double-to-int v9, v9

    .line 1088
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v10

    .line 1092
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1093
    .line 1094
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1095
    .line 1096
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1097
    .line 1098
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v9

    .line 1105
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1106
    .line 1107
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1108
    .line 1109
    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v8, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1113
    .line 1114
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    check-cast v2, Ljava/lang/String;

    .line 1119
    .line 1120
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    .line 1126
    .line 1127
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1128
    .line 1129
    const-string v2, "cover"

    .line 1130
    .line 1131
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    check-cast v0, Ljava/lang/String;

    .line 1136
    .line 1137
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    if-eqz v0, :cond_12

    .line 1142
    .line 1143
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1144
    .line 1145
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1158
    .line 1159
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1160
    .line 1161
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2

    .line 1165
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1170
    .line 1171
    .line 1172
    goto :goto_d

    .line 1173
    :cond_12
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1174
    .line 1175
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    check-cast v0, Ljava/lang/String;

    .line 1180
    .line 1181
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    :try_start_6
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1190
    .line 1191
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1204
    .line 1205
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1206
    .line 1207
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    const v2, 0x7f08086d

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0, v2}, LL2/a;->f(I)LL2/a;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1223
    .line 1224
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1225
    .line 1226
    .line 1227
    :catch_4
    :goto_d
    iget-object v0, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v0, Lc7/d;

    .line 1230
    .line 1231
    iget-object v2, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1232
    .line 1233
    const-string v3, "series_id"

    .line 1234
    .line 1235
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    check-cast v2, Ljava/lang/String;

    .line 1240
    .line 1241
    iget-object v3, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v3, Lh7/i;

    .line 1244
    .line 1245
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 1246
    .line 1247
    const-string v4, "_series"

    .line 1248
    .line 1249
    invoke-virtual {v0, v2, v3, v4}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    if-eqz v0, :cond_13

    .line 1258
    .line 1259
    const/4 v0, 0x0

    .line 1260
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_e

    .line 1264
    :cond_13
    const/16 v0, 0x8

    .line 1265
    .line 1266
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    .line 1268
    .line 1269
    :goto_e
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1270
    .line 1271
    new-instance v2, Lb7/f;

    .line 1272
    .line 1273
    const/4 v3, 0x6

    .line 1274
    invoke-direct {v2, v6, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1278
    .line 1279
    .line 1280
    return-object v1

    .line 1281
    :pswitch_1
    new-instance v9, Lc7/d;

    .line 1282
    .line 1283
    move-object/from16 v22, v14

    .line 1284
    .line 1285
    iget-object v14, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1286
    .line 1287
    invoke-direct {v9, v14}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 1288
    .line 1289
    .line 1290
    iput-object v9, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 1291
    .line 1292
    new-instance v9, Lc7/a;

    .line 1293
    .line 1294
    iget-object v14, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1295
    .line 1296
    move-object/from16 v23, v7

    .line 1297
    .line 1298
    const/4 v7, 0x0

    .line 1299
    invoke-direct {v9, v14, v7}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v11, v10, v9}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v9

    .line 1306
    iput-object v9, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1307
    .line 1308
    iget-object v9, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1309
    .line 1310
    invoke-virtual {v9, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v5

    .line 1314
    check-cast v5, Landroid/view/LayoutInflater;

    .line 1315
    .line 1316
    const v9, 0x7f0e002a

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v5, v9, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    iget-object v5, v6, Lb7/G;->h:Ljava/util/ArrayList;

    .line 1324
    .line 1325
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    check-cast v0, Ljava/util/HashMap;

    .line 1330
    .line 1331
    iput-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1332
    .line 1333
    const v0, 0x7f0b0155

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 1341
    .line 1342
    const v0, 0x7f0b0300

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1350
    .line 1351
    const v0, 0x7f0b051d

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    check-cast v0, Landroid/widget/TextView;

    .line 1359
    .line 1360
    const v5, 0x7f0b028b

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v5

    .line 1367
    check-cast v5, Landroid/widget/ImageView;

    .line 1368
    .line 1369
    const v7, 0x7f0b0292

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v7

    .line 1376
    check-cast v7, Landroid/widget/ImageView;

    .line 1377
    .line 1378
    sget v9, Lpe/hf/black20/ChannelListActivity;->t0:I

    .line 1379
    .line 1380
    int-to-double v9, v9

    .line 1381
    mul-double v9, v9, v18

    .line 1382
    .line 1383
    sget v11, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 1384
    .line 1385
    move-object/from16 v24, v15

    .line 1386
    .line 1387
    float-to-double v14, v11

    .line 1388
    mul-double v9, v9, v14

    .line 1389
    .line 1390
    double-to-int v9, v9

    .line 1391
    const/4 v10, 0x6

    .line 1392
    div-int/2addr v9, v10

    .line 1393
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v10

    .line 1397
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1398
    .line 1399
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1400
    .line 1401
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1402
    .line 1403
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1404
    .line 1405
    .line 1406
    iget-object v9, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1407
    .line 1408
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    check-cast v2, Ljava/lang/String;

    .line 1413
    .line 1414
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v2

    .line 1418
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    .line 1420
    .line 1421
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1422
    .line 1423
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    check-cast v0, Ljava/lang/String;

    .line 1428
    .line 1429
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v0

    .line 1433
    if-eqz v0, :cond_14

    .line 1434
    .line 1435
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1436
    .line 1437
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1450
    .line 1451
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1452
    .line 1453
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v2

    .line 1457
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_f

    .line 1465
    :cond_14
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1466
    .line 1467
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v0

    .line 1471
    check-cast v0, Ljava/lang/String;

    .line 1472
    .line 1473
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    move-object/from16 v9, v24

    .line 1478
    .line 1479
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v2

    .line 1487
    move-object/from16 v14, v23

    .line 1488
    .line 1489
    invoke-virtual {v2, v14, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v2

    .line 1493
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v2

    .line 1497
    move-object/from16 v15, v21

    .line 1498
    .line 1499
    invoke-virtual {v0, v15, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v0

    .line 1503
    :try_start_7
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1504
    .line 1505
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v2

    .line 1509
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1518
    .line 1519
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1520
    .line 1521
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v2

    .line 1525
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v0

    .line 1529
    const v2, 0x7f08086d

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v0, v2}, LL2/a;->f(I)LL2/a;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1537
    .line 1538
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1539
    .line 1540
    .line 1541
    :catch_5
    :goto_f
    iget-object v0, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 1542
    .line 1543
    check-cast v0, Lc7/d;

    .line 1544
    .line 1545
    iget-object v2, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1546
    .line 1547
    move-object/from16 v3, v20

    .line 1548
    .line 1549
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v2

    .line 1553
    check-cast v2, Ljava/lang/String;

    .line 1554
    .line 1555
    iget-object v3, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1556
    .line 1557
    check-cast v3, Lh7/i;

    .line 1558
    .line 1559
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 1560
    .line 1561
    const-string v4, "_live"

    .line 1562
    .line 1563
    invoke-virtual {v0, v2, v3, v4}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v0

    .line 1567
    move-object/from16 v2, v22

    .line 1568
    .line 1569
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1570
    .line 1571
    .line 1572
    move-result v0

    .line 1573
    if-eqz v0, :cond_15

    .line 1574
    .line 1575
    const/4 v0, 0x0

    .line 1576
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1577
    .line 1578
    .line 1579
    goto :goto_10

    .line 1580
    :cond_15
    const/16 v0, 0x8

    .line 1581
    .line 1582
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1583
    .line 1584
    .line 1585
    :goto_10
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1586
    .line 1587
    new-instance v2, Lb7/f;

    .line 1588
    .line 1589
    const/4 v3, 0x5

    .line 1590
    invoke-direct {v2, v6, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1594
    .line 1595
    .line 1596
    return-object v1

    .line 1597
    :pswitch_2
    move-object/from16 v25, v14

    .line 1598
    .line 1599
    move-object v9, v15

    .line 1600
    move-object/from16 v15, v21

    .line 1601
    .line 1602
    move-object v14, v7

    .line 1603
    new-instance v7, Lc7/d;

    .line 1604
    .line 1605
    iget-object v15, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1606
    .line 1607
    invoke-direct {v7, v15}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 1608
    .line 1609
    .line 1610
    iput-object v7, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 1611
    .line 1612
    new-instance v7, Lc7/a;

    .line 1613
    .line 1614
    iget-object v15, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1615
    .line 1616
    move-object/from16 v23, v14

    .line 1617
    .line 1618
    const/4 v14, 0x0

    .line 1619
    invoke-direct {v7, v15, v14}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 1620
    .line 1621
    .line 1622
    invoke-static {v11, v10, v7}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v7

    .line 1626
    iput-object v7, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1627
    .line 1628
    iget-object v7, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1629
    .line 1630
    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v5

    .line 1634
    check-cast v5, Landroid/view/LayoutInflater;

    .line 1635
    .line 1636
    const v7, 0x7f0e0057

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v5, v7, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v1

    .line 1643
    iget-object v5, v6, Lb7/G;->h:Ljava/util/ArrayList;

    .line 1644
    .line 1645
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    check-cast v0, Ljava/util/HashMap;

    .line 1650
    .line 1651
    iput-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1652
    .line 1653
    const v0, 0x7f0b051d

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v0

    .line 1660
    check-cast v0, Landroid/widget/TextView;

    .line 1661
    .line 1662
    const v5, 0x7f0b028b

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v5

    .line 1669
    check-cast v5, Landroid/widget/ImageView;

    .line 1670
    .line 1671
    iget-object v7, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1672
    .line 1673
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v7

    .line 1677
    check-cast v7, Ljava/lang/CharSequence;

    .line 1678
    .line 1679
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    .line 1681
    .line 1682
    const v7, 0x7f0b0292

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v7

    .line 1689
    check-cast v7, Landroid/widget/ImageView;

    .line 1690
    .line 1691
    const v10, 0x7f0b0155

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v10

    .line 1698
    check-cast v10, Landroidx/cardview/widget/CardView;

    .line 1699
    .line 1700
    sget v10, Lpe/hf/black20/CategoriesActivity;->K0:I

    .line 1701
    .line 1702
    int-to-double v10, v10

    .line 1703
    mul-double v10, v10, v18

    .line 1704
    .line 1705
    double-to-int v10, v10

    .line 1706
    const/4 v11, 0x6

    .line 1707
    div-int/2addr v10, v11

    .line 1708
    int-to-double v14, v10

    .line 1709
    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    .line 1710
    .line 1711
    mul-double v14, v14, v16

    .line 1712
    .line 1713
    double-to-int v11, v14

    .line 1714
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v14

    .line 1718
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1719
    .line 1720
    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1721
    .line 1722
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1723
    .line 1724
    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v11

    .line 1731
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1732
    .line 1733
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1734
    .line 1735
    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1736
    .line 1737
    .line 1738
    iget-object v10, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1739
    .line 1740
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v2

    .line 1744
    check-cast v2, Ljava/lang/String;

    .line 1745
    .line 1746
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v2

    .line 1750
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    .line 1752
    .line 1753
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1754
    .line 1755
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    check-cast v0, Ljava/lang/String;

    .line 1760
    .line 1761
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v0

    .line 1765
    if-eqz v0, :cond_16

    .line 1766
    .line 1767
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1768
    .line 1769
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v0

    .line 1777
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1782
    .line 1783
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1784
    .line 1785
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v2

    .line 1789
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v0

    .line 1793
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1794
    .line 1795
    .line 1796
    goto :goto_11

    .line 1797
    :cond_16
    iget-object v0, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1798
    .line 1799
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    check-cast v0, Ljava/lang/String;

    .line 1804
    .line 1805
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v0

    .line 1809
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v2

    .line 1817
    move-object/from16 v8, v23

    .line 1818
    .line 1819
    invoke-virtual {v2, v8, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v2

    .line 1823
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    move-object/from16 v4, v21

    .line 1828
    .line 1829
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1834
    .line 1835
    .line 1836
    move-result v2

    .line 1837
    const/16 v4, 0xa

    .line 1838
    .line 1839
    if-ge v2, v4, :cond_17

    .line 1840
    .line 1841
    iget-object v0, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1842
    .line 1843
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v0

    .line 1847
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v0

    .line 1851
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1856
    .line 1857
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1858
    .line 1859
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v2

    .line 1863
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1868
    .line 1869
    .line 1870
    goto :goto_11

    .line 1871
    :cond_17
    :try_start_8
    iget-object v2, v6, Lb7/G;->b:Landroid/content/Context;

    .line 1872
    .line 1873
    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v2

    .line 1877
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v0

    .line 1881
    invoke-virtual {v0}, LL2/a;->g()LL2/a;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v0

    .line 1885
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1886
    .line 1887
    iget-object v2, v6, Lb7/G;->d:LN2/a;

    .line 1888
    .line 1889
    invoke-static {v2}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v2

    .line 1893
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v0

    .line 1897
    const v2, 0x7f08086d

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v0, v2}, LL2/a;->f(I)LL2/a;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v0

    .line 1904
    check-cast v0, Lcom/bumptech/glide/l;

    .line 1905
    .line 1906
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1907
    .line 1908
    .line 1909
    :catch_6
    :goto_11
    iget-object v0, v6, Lb7/G;->e:Ljava/lang/Object;

    .line 1910
    .line 1911
    check-cast v0, Lc7/d;

    .line 1912
    .line 1913
    iget-object v2, v6, Lb7/G;->i:Ljava/util/HashMap;

    .line 1914
    .line 1915
    move-object/from16 v3, v20

    .line 1916
    .line 1917
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v2

    .line 1921
    check-cast v2, Ljava/lang/String;

    .line 1922
    .line 1923
    iget-object v3, v6, Lb7/G;->g:Ljava/lang/Object;

    .line 1924
    .line 1925
    check-cast v3, Lh7/i;

    .line 1926
    .line 1927
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 1928
    .line 1929
    const-string v4, "_vod"

    .line 1930
    .line 1931
    invoke-virtual {v0, v2, v3, v4}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v0

    .line 1935
    move-object/from16 v2, v25

    .line 1936
    .line 1937
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1938
    .line 1939
    .line 1940
    move-result v0

    .line 1941
    if-eqz v0, :cond_18

    .line 1942
    .line 1943
    const/4 v0, 0x0

    .line 1944
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1945
    .line 1946
    .line 1947
    goto :goto_12

    .line 1948
    :cond_18
    const/16 v0, 0x8

    .line 1949
    .line 1950
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1951
    .line 1952
    .line 1953
    :goto_12
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 1954
    .line 1955
    new-instance v2, Lb7/f;

    .line 1956
    .line 1957
    const/4 v3, 0x4

    .line 1958
    invoke-direct {v2, v6, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1962
    .line 1963
    .line 1964
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
