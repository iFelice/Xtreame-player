.class public final Lb7/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/A1;


# direct methods
.method public synthetic constructor <init>(Lb7/A1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/r1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/r1;->H:Lb7/A1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const-string p1, "-----------------------------calling getCat()"

    .line 2
    .line 3
    const-string v0, "XCIPTV_TAG"

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    iget v2, p0, Lb7/r1;->G:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const v4, 0x7f130212

    .line 11
    .line 12
    .line 13
    const-string v5, "input_method"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v7, p0, Lb7/r1;->H:Lb7/A1;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, LY/s;->j()LY/v;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    sget p1, Lb7/A1;->a1:I

    .line 30
    .line 31
    iget-object p1, v7, Lb7/A1;->Y0:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v7, Lb7/A1;->Z0:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v7, Lb7/A1;->E0:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    .line 62
    iget-object v5, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    .line 70
    .line 71
    iget-object v2, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-static {v2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    iget-object p1, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, v7, Lb7/A1;->Y0:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v7, Lb7/A1;->Z0:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    new-instance p1, Ljava/lang/Thread;

    .line 117
    .line 118
    new-instance v0, Lb7/t1;

    .line 119
    .line 120
    invoke-direct {v0, v1, v7, v6, v3}, Lb7/t1;-><init>(Ljava/lang/String;Lb7/A1;ZZ)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :pswitch_2
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    .line 140
    iget-object v5, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 141
    .line 142
    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 147
    .line 148
    .line 149
    iget-object v2, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 150
    .line 151
    invoke-static {v2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_1

    .line 156
    .line 157
    iget-object p1, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 158
    .line 159
    invoke-virtual {v7}, LY/s;->l()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    iget-object v2, v7, Lb7/A1;->Y0:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v7, Lb7/A1;->Z0:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v7, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/Thread;

    .line 195
    .line 196
    new-instance v0, Lb7/t1;

    .line 197
    .line 198
    invoke-direct {v0, v1, v7, v3, v6}, Lb7/t1;-><init>(Ljava/lang/String;Lb7/A1;ZZ)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 205
    .line 206
    .line 207
    :goto_1
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
