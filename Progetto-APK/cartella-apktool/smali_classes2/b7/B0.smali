.class public final Lb7/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/I0;


# direct methods
.method public synthetic constructor <init>(Lb7/I0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/B0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/B0;->H:Lb7/I0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget v0, p0, Lb7/B0;->G:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "all"

    .line 8
    .line 9
    iget-object v5, p0, Lb7/B0;->H:Lb7/I0;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const-string p1, "continue"

    .line 15
    .line 16
    iput-object p1, v5, Lb7/I0;->p1:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v5, v4}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iput-boolean v3, v5, Lb7/I0;->o1:Z

    .line 23
    .line 24
    const-string p1, "fav"

    .line 25
    .line 26
    iput-object p1, v5, Lb7/I0;->p1:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    invoke-virtual {v5, p1, v2}, Lb7/I0;->W(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iput-boolean v3, v5, Lb7/I0;->o1:Z

    .line 37
    .line 38
    iget-boolean v0, v5, Lb7/I0;->m1:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const-string v0, "search"

    .line 43
    .line 44
    iput-object v0, v5, Lb7/I0;->p1:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, v5, Lb7/I0;->k1:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v5, v0}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, p1, v2}, Lb7/I0;->W(Landroid/view/View;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v5, p1, v3}, Lb7/I0;->W(Landroid/view/View;Z)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_3
    iget-object p1, v5, Lb7/I0;->w1:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_4
    invoke-virtual {v5}, LY/s;->l()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const v0, 0x7f0e011f

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 90
    .line 91
    invoke-virtual {v5}, LY/s;->l()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 107
    .line 108
    const-string v4, "#99000000"

    .line 109
    .line 110
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const v4, 0x7f0b03d7

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v3, v0, p1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/EditText;

    .line 125
    .line 126
    const v3, 0x7f0b00a4

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/widget/Button;

    .line 134
    .line 135
    const v4, 0x7f0b00b1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/Button;

    .line 143
    .line 144
    new-instance v4, LW4/a;

    .line 145
    .line 146
    const/4 v5, 0x2

    .line 147
    invoke-direct {v4, p0, v2, v0, v5}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Ll/c;

    .line 154
    .line 155
    invoke-direct {v2, v1, p0, v0}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_5
    iput-boolean v3, v5, Lb7/I0;->o1:Z

    .line 166
    .line 167
    iput-object v4, v5, Lb7/I0;->p1:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v5, v4}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
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
