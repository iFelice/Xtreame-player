.class public Lpe/hf/black20/RecordsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static W:Landroid/widget/ListView;


# instance fields
.field public final G:Lpe/hf/black20/RecordsActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/widget/Button;

.field public J:Lc7/c;

.field public K:Lorg/json/JSONArray;

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/ArrayList;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Landroid/widget/Button;

.field public U:Landroid/widget/Button;

.field public V:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v0, "Recorded"

    .line 14
    .line 15
    iput-object v0, p0, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->J:Lc7/c;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lc7/c;->b0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->M:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :goto_0
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ge p1, v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lh7/f;

    .line 42
    .line 43
    iget-object v1, v1, Lh7/f;->a:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "id"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lh7/f;

    .line 57
    .line 58
    iget-object v1, v1, Lh7/f;->b:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "title"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lh7/f;

    .line 72
    .line 73
    iget-object v1, v1, Lh7/f;->c:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "path"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lh7/f;

    .line 87
    .line 88
    iget-object v1, v1, Lh7/f;->d:Ljava/lang/String;

    .line 89
    .line 90
    const-string v2, "stream"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lh7/f;

    .line 102
    .line 103
    iget-object v1, v1, Lh7/f;->e:Ljava/lang/String;

    .line 104
    .line 105
    const-string v2, "status"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lh7/f;

    .line 117
    .line 118
    iget-object v1, v1, Lh7/f;->f:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "length"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->L:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lh7/f;

    .line 132
    .line 133
    iget-object v1, v1, Lh7/f;->g:Ljava/lang/String;

    .line 134
    .line 135
    const-string v2, "date"

    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lpe/hf/black20/RecordsActivity;->M:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 p1, p1, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    .line 149
    .line 150
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->M:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    .line 156
    .line 157
    new-instance p1, Lb7/M;

    .line 158
    .line 159
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->M:Ljava/util/ArrayList;

    .line 160
    .line 161
    const/4 v1, 0x4

    .line 162
    invoke-direct {p1, v1, p0, v0}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    .line 169
    .line 170
    sget-object p1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 173
    .line 174
    .line 175
    sget-object p1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 176
    .line 177
    new-instance v0, Lb7/v0;

    .line 178
    .line 179
    const/4 v1, 0x2

    .line 180
    invoke-direct {v0, p0, v1}, Lb7/v0;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0128

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
    const v4, 0x7f0b0114

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/Button;

    .line 47
    .line 48
    const v3, 0x7f0b00b0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/Button;

    .line 56
    .line 57
    const v4, 0x7f0b0108

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/Button;

    .line 65
    .line 66
    const-string v4, "Scheduled"

    .line 67
    .line 68
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    const/16 v4, 0x8

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    const-string v4, "Recording Now"

    .line 80
    .line 81
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    const-string v4, "STOP Recording"

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    new-instance v4, Lb7/b;

    .line 93
    .line 94
    const/4 v5, 0x6

    .line 95
    invoke-direct {v4, v0, v5}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Lb7/o1;

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    move-object v3, v9

    .line 105
    move-object v4, p0

    .line 106
    move-object v5, p1

    .line 107
    move-object v6, p2

    .line 108
    move-object v7, v0

    .line 109
    invoke-direct/range {v3 .. v8}, Lb7/o1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    new-instance p2, Lb7/o1;

    .line 116
    .line 117
    const/4 v8, 0x1

    .line 118
    move-object v3, p2

    .line 119
    move-object v5, p3

    .line 120
    move-object v6, p1

    .line 121
    invoke-direct/range {v3 .. v8}, Lb7/o1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0047

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b028a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x7f0805f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f08053b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string p1, "pe.hf.black20"

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    const p1, 0x7f0b0334

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/ListView;

    .line 57
    .line 58
    sput-object p1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 59
    .line 60
    new-instance p1, Lc7/c;

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-direct {p1, v0, v2}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->J:Lc7/c;

    .line 67
    .line 68
    const p1, 0x7f0b00d9

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/Button;

    .line 76
    .line 77
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->I:Landroid/widget/Button;

    .line 78
    .line 79
    const p1, 0x7f0b00ef

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/Button;

    .line 87
    .line 88
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->U:Landroid/widget/Button;

    .line 89
    .line 90
    const p1, 0x7f0b00f0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/Button;

    .line 98
    .line 99
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->T:Landroid/widget/Button;

    .line 100
    .line 101
    const p1, 0x7f0b00a9

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/Button;

    .line 109
    .line 110
    iput-object p1, p0, Lpe/hf/black20/RecordsActivity;->V:Landroid/widget/Button;

    .line 111
    .line 112
    iget-object p1, p0, Lpe/hf/black20/RecordsActivity;->I:Landroid/widget/Button;

    .line 113
    .line 114
    new-instance v0, Lb7/n1;

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Lb7/n1;-><init>(Lpe/hf/black20/RecordsActivity;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lpe/hf/black20/RecordsActivity;->U:Landroid/widget/Button;

    .line 123
    .line 124
    new-instance v0, Lb7/n1;

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-direct {v0, p0, v1}, Lb7/n1;-><init>(Lpe/hf/black20/RecordsActivity;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lpe/hf/black20/RecordsActivity;->T:Landroid/widget/Button;

    .line 134
    .line 135
    new-instance v0, Lb7/n1;

    .line 136
    .line 137
    invoke-direct {v0, p0, v2}, Lb7/n1;-><init>(Lpe/hf/black20/RecordsActivity;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lpe/hf/black20/RecordsActivity;->V:Landroid/widget/Button;

    .line 144
    .line 145
    new-instance v0, Lb7/n1;

    .line 146
    .line 147
    const/4 v1, 0x3

    .line 148
    invoke-direct {v0, p0, v1}, Lb7/n1;-><init>(Lpe/hf/black20/RecordsActivity;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
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
    const-string v2, "ORT_isRecordsActivityVisible"

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
    iget-object v0, p0, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lpe/hf/black20/RecordsActivity;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "ORT_isRecordsActivityVisible"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 17
    .line 18
    .line 19
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
    const-string v2, "ORT_isRecordsActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method
