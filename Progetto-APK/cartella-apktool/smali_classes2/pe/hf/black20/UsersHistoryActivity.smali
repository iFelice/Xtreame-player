.class public Lpe/hf/black20/UsersHistoryActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static Z:Landroid/widget/ListView;

.field public static a0:Landroid/widget/EditText;

.field public static b0:Landroid/widget/EditText;

.field public static c0:Landroid/widget/EditText;

.field public static d0:Landroid/widget/EditText;


# instance fields
.field public final G:Lpe/hf/black20/UsersHistoryActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/content/SharedPreferences$Editor;

.field public J:Lc7/a;

.field public K:Lc7/d;

.field public L:Lc7/b;

.field public M:Lc7/c;

.field public N:Lh7/i;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/ArrayList;

.field public Q:Landroid/widget/Button;

.field public R:Landroid/widget/Button;

.field public S:Landroid/widget/Button;

.field public T:Landroid/widget/Button;

.field public U:Landroid/widget/Button;

.field public V:Landroid/app/AlertDialog;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v0, "xtreamcodes"

    .line 14
    .line 15
    iput-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lpe/hf/black20/UsersHistoryActivity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0133

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v4, "#99000000"

    .line 31
    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f0b01c7

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/EditText;

    .line 47
    .line 48
    sput-object v2, Lpe/hf/black20/UsersHistoryActivity;->a0:Landroid/widget/EditText;

    .line 49
    .line 50
    const v2, 0x7f0b01d0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/EditText;

    .line 58
    .line 59
    sput-object v2, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 60
    .line 61
    const v2, 0x7f0b01ca

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/widget/EditText;

    .line 69
    .line 70
    sput-object v2, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 71
    .line 72
    const v2, 0x7f0b01cf

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/widget/EditText;

    .line 80
    .line 81
    sput-object v2, Lpe/hf/black20/UsersHistoryActivity;->d0:Landroid/widget/EditText;

    .line 82
    .line 83
    const v2, 0x7f0b0590

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/TextView;

    .line 91
    .line 92
    const v3, 0x7f0b0560

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroid/widget/TextView;

    .line 100
    .line 101
    const v4, 0x7f0b0570

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v5, p0, Lpe/hf/black20/UsersHistoryActivity;->W:Ljava/lang/String;

    .line 111
    .line 112
    const-string v6, "m3u"

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_0

    .line 119
    .line 120
    sget-object v5, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 121
    .line 122
    const/16 v6, 0x8

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    sget-object v5, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    const-string v2, "M3U URL"

    .line 139
    .line 140
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lpe/hf/black20/UsersHistoryActivity;->d0:Landroid/widget/EditText;

    .line 144
    .line 145
    const-string v3, "Enter M3U URL"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    sget-object v2, Lpe/hf/black20/UsersHistoryActivity;->b0:Landroid/widget/EditText;

    .line 151
    .line 152
    const-string v3, "(M3U)"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    sget-object v2, Lpe/hf/black20/UsersHistoryActivity;->c0:Landroid/widget/EditText;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :cond_0
    const v2, 0x7f0b00a3

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Landroid/widget/Button;

    .line 170
    .line 171
    iput-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->T:Landroid/widget/Button;

    .line 172
    .line 173
    const v2, 0x7f0b00b0

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroid/widget/Button;

    .line 181
    .line 182
    new-instance v2, Lb7/L1;

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-direct {v2, p0, v0, v3}, Lb7/L1;-><init>(Lpe/hf/black20/UsersHistoryActivity;Landroid/app/AlertDialog;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lpe/hf/black20/UsersHistoryActivity;->T:Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v2, Lb7/L1;

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    invoke-direct {v2, p0, v0, v3}, Lb7/L1;-><init>(Lpe/hf/black20/UsersHistoryActivity;Landroid/app/AlertDialog;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public static b(Lpe/hf/black20/UsersHistoryActivity;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v5, "#4f000000"

    .line 31
    .line 32
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v5, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0b014f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    const v1, 0x7f1301ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lb7/L1;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-direct {v0, p0, v2, v1}, Lb7/L1;-><init>(Lpe/hf/black20/UsersHistoryActivity;Landroid/app/AlertDialog;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static c(Lpe/hf/black20/UsersHistoryActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0132

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

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
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f0b0114

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroid/widget/Button;

    .line 57
    .line 58
    const v3, 0x7f0b00b0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/Button;

    .line 66
    .line 67
    const v4, 0x7f0b00e3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/Button;

    .line 75
    .line 76
    const-string v4, "no"

    .line 77
    .line 78
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    const v4, 0x7f13019c

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 88
    .line 89
    .line 90
    const v4, 0x7f080541

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    new-instance v0, Lb7/M1;

    .line 101
    .line 102
    const/4 v4, 0x4

    .line 103
    invoke-direct {v0, p0, v4}, Lb7/M1;-><init>(Lpe/hf/black20/UsersHistoryActivity;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, LW4/a;

    .line 110
    .line 111
    const/4 v3, 0x6

    .line 112
    invoke-direct {v0, p0, p3, p1, v3}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p3, "ORT_WHICH_PANEL"

    .line 123
    .line 124
    const-string v0, "xtreamcodes"

    .line 125
    .line 126
    invoke-virtual {p1, p3, v0}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string p3, "m3u"

    .line 131
    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    const/16 p1, 0x8

    .line 139
    .line 140
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    :cond_1
    new-instance p1, Ll/c;

    .line 144
    .line 145
    const/16 p3, 0x10

    .line 146
    .line 147
    invoke-direct {p1, p3, p0, p2}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lpe/hf/black20/UsersHistoryActivity;->V:Landroid/app/AlertDialog;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 156
    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lc7/a;->d0()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->P:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lh7/i;

    .line 48
    .line 49
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "id"

    .line 52
    .line 53
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lh7/i;

    .line 63
    .line 64
    iget-object v3, v3, Lh7/i;->b:Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "name"

    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lh7/i;

    .line 78
    .line 79
    iget-object v3, v3, Lh7/i;->c:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "username"

    .line 82
    .line 83
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lh7/i;

    .line 93
    .line 94
    iget-object v3, v3, Lh7/i;->d:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "password"

    .line 97
    .line 98
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->O:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lh7/i;

    .line 108
    .line 109
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 110
    .line 111
    const-string v4, "server"

    .line 112
    .line 113
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->P:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 125
    .line 126
    iget-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->P:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lb7/z1;

    .line 132
    .line 133
    iget-object v2, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

    .line 134
    .line 135
    iget-object v3, p0, Lpe/hf/black20/UsersHistoryActivity;->P:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v1, p0, v2, v3}, Lb7/z1;-><init>(Lpe/hf/black20/UsersHistoryActivity;Lpe/hf/black20/UsersHistoryActivity;Ljava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lpe/hf/black20/UsersHistoryActivity;->Z:Landroid/widget/ListView;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Lpe/hf/black20/UsersHistoryActivity;->Z:Landroid/widget/ListView;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0055

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
    iget-object v0, p0, Lpe/hf/black20/UsersHistoryActivity;->G:Lpe/hf/black20/UsersHistoryActivity;

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
    const p1, 0x7f0b03d8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/ProgressBar;

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    const-string p1, "pe.hf.black20"

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->H:Landroid/content/SharedPreferences;

    .line 85
    .line 86
    new-instance p1, Lc7/a;

    .line 87
    .line 88
    invoke-direct {p1, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->J:Lc7/a;

    .line 92
    .line 93
    new-instance p1, Lc7/d;

    .line 94
    .line 95
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->K:Lc7/d;

    .line 99
    .line 100
    new-instance p1, Lc7/b;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-direct {p1, v0, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->L:Lc7/b;

    .line 107
    .line 108
    new-instance p1, Lc7/c;

    .line 109
    .line 110
    invoke-direct {p1, v0, v1}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->M:Lc7/c;

    .line 114
    .line 115
    const p1, 0x7f0b0329

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/ListView;

    .line 123
    .line 124
    sput-object p1, Lpe/hf/black20/UsersHistoryActivity;->Z:Landroid/widget/ListView;

    .line 125
    .line 126
    const p1, 0x7f0b00a3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/Button;

    .line 134
    .line 135
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 136
    .line 137
    const p1, 0x7f0b00e4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/Button;

    .line 145
    .line 146
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 147
    .line 148
    const p1, 0x7f0b00d1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/widget/Button;

    .line 156
    .line 157
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 158
    .line 159
    const p1, 0x7f0b00d3

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Landroid/widget/Button;

    .line 167
    .line 168
    iput-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->U:Landroid/widget/Button;

    .line 169
    .line 170
    invoke-virtual {p0}, Lpe/hf/black20/UsersHistoryActivity;->d()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 174
    .line 175
    new-instance v0, Lb7/M1;

    .line 176
    .line 177
    invoke-direct {v0, p0, v1}, Lb7/M1;-><init>(Lpe/hf/black20/UsersHistoryActivity;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 184
    .line 185
    new-instance v0, Lb7/M1;

    .line 186
    .line 187
    invoke-direct {v0, p0, v2}, Lb7/M1;-><init>(Lpe/hf/black20/UsersHistoryActivity;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 194
    .line 195
    new-instance v0, Lb7/M1;

    .line 196
    .line 197
    const/4 v2, 0x2

    .line 198
    invoke-direct {v0, p0, v2}, Lb7/M1;-><init>(Lpe/hf/black20/UsersHistoryActivity;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->U:Landroid/widget/Button;

    .line 205
    .line 206
    new-instance v0, Lb7/M1;

    .line 207
    .line 208
    const/4 v2, 0x3

    .line 209
    invoke-direct {v0, p0, v2}, Lb7/M1;-><init>(Lpe/hf/black20/UsersHistoryActivity;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    sget-object p1, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 216
    .line 217
    const-string v0, "no"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_7

    .line 224
    .line 225
    const-string p1, "ORT_WHICH_PANEL"

    .line 226
    .line 227
    const-string v2, "xtreamcodes"

    .line 228
    .line 229
    invoke-static {p1, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const/4 v4, 0x0

    .line 234
    const-string v5, "hide_other_login_type"

    .line 235
    .line 236
    const/16 v6, 0x8

    .line 237
    .line 238
    if-eqz v3, :cond_3

    .line 239
    .line 240
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->H:Landroid/content/SharedPreferences;

    .line 241
    .line 242
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_2

    .line 251
    .line 252
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 259
    .line 260
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 264
    .line 265
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 269
    .line 270
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->U:Landroid/widget/Button;

    .line 274
    .line 275
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_3
    const-string v3, "ezserver"

    .line 280
    .line 281
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_5

    .line 286
    .line 287
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 288
    .line 289
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 293
    .line 294
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->U:Landroid/widget/Button;

    .line 298
    .line 299
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->H:Landroid/content/SharedPreferences;

    .line 303
    .line 304
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_4

    .line 313
    .line 314
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 315
    .line 316
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_4
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 321
    .line 322
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_5
    const-string v3, "m3u"

    .line 327
    .line 328
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_8

    .line 333
    .line 334
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 335
    .line 336
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 340
    .line 341
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->U:Landroid/widget/Button;

    .line 345
    .line 346
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->H:Landroid/content/SharedPreferences;

    .line 350
    .line 351
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_6

    .line 360
    .line 361
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 362
    .line 363
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_6
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 368
    .line 369
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_7
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->Q:Landroid/widget/Button;

    .line 374
    .line 375
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->R:Landroid/widget/Button;

    .line 379
    .line 380
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lpe/hf/black20/UsersHistoryActivity;->S:Landroid/widget/Button;

    .line 384
    .line 385
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    .line 387
    .line 388
    :cond_8
    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isUsersHistoryActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ORT_isUsersHistoryActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isUsersHistoryActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method
