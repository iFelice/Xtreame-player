.class public final synthetic Lb7/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/K;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/K;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5

    .line 1
    iget p1, p0, Lb7/K;->a:I

    .line 2
    .line 3
    const-string p2, "ORT_PROFILE_ID"

    .line 4
    .line 5
    const-string p4, ""

    .line 6
    .line 7
    iget-object p5, p0, Lb7/K;->b:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p5, Lb7/h1;

    .line 14
    .line 15
    const-string p1, "stream_id"

    .line 16
    .line 17
    const-string v1, "_live"

    .line 18
    .line 19
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 20
    .line 21
    :try_start_0
    iget-object v2, p5, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 22
    .line 23
    invoke-virtual {v2, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p5, Lpe/hf/black20/PlayStreamEPGActivity;->L0:Lc7/d;

    .line 32
    .line 33
    iget-object v4, p5, Lpe/hf/black20/PlayStreamEPGActivity;->K1:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    check-cast p3, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    iget-object p3, p5, Lpe/hf/black20/PlayStreamEPGActivity;->O0:Lh7/i;

    .line 48
    .line 49
    iget-object p3, p3, Lh7/i;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, p1, p3, v1}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p3, "yes"

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget-object p1, p5, Lpe/hf/black20/PlayStreamEPGActivity;->L0:Lc7/d;

    .line 64
    .line 65
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3, p2, p4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, v2, p2, v1}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p5, Lpe/hf/black20/PlayStreamEPGActivity;->L0:Lc7/d;

    .line 78
    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    invoke-virtual {p5, p2, p4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, v2, p2}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    const-string p1, "XCIPTV_TAG"

    .line 107
    .line 108
    const-string p2, "---------JSONException"

    .line 109
    .line 110
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_0
    return v0

    .line 114
    :pswitch_0
    check-cast p5, Lb7/t;

    .line 115
    .line 116
    iget-object p1, p5, Lb7/t;->d:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/util/HashMap;

    .line 123
    .line 124
    iput-object p1, p5, Lb7/t;->e:Ljava/util/HashMap;

    .line 125
    .line 126
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 127
    .line 128
    iget-object p3, p5, Lb7/t;->b:Landroid/content/Context;

    .line 129
    .line 130
    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    const p3, 0x7f130173

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 137
    .line 138
    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v1, "-"

    .line 145
    .line 146
    invoke-static {p2, p4, p3, v1}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p5, Lb7/t;->e:Ljava/util/HashMap;

    .line 150
    .line 151
    const-string p4, "id"

    .line 152
    .line 153
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    .line 168
    .line 169
    new-instance p2, LO5/i;

    .line 170
    .line 171
    invoke-direct {p2, p5, v0}, LO5/i;-><init>(Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    const-string p3, "YES"

    .line 175
    .line 176
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    .line 178
    .line 179
    new-instance p2, Lb7/L;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string p3, "NO"

    .line 185
    .line 186
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 194
    .line 195
    .line 196
    return v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
