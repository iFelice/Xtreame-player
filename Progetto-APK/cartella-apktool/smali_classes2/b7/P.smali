.class public final synthetic Lb7/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/P;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/P;->b:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget p1, p0, Lb7/P;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/P;->b:Landroid/app/Activity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lpe/hf/black20/MultiScreenActivityEXO;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    iget p2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 21
    .line 22
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    .line 24
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 25
    .line 26
    iget-object p2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    .line 40
    iget p2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 41
    .line 42
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 43
    .line 44
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 45
    .line 46
    iget-object p2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_0
    check-cast v0, Lpe/hf/black20/LoginActivity;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object p1, v0, Lpe/hf/black20/LoginActivity;->i0:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    iget p2, v0, Lpe/hf/black20/LoginActivity;->f0:I

    .line 65
    .line 66
    mul-int/lit8 p2, p2, 0x3c

    .line 67
    .line 68
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 69
    .line 70
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 71
    .line 72
    iget-object p2, v0, Lpe/hf/black20/LoginActivity;->i0:Landroid/widget/Button;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, v0, Lpe/hf/black20/LoginActivity;->i0:Landroid/widget/Button;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    iget p2, v0, Lpe/hf/black20/LoginActivity;->f0:I

    .line 87
    .line 88
    mul-int/lit8 p2, p2, 0x32

    .line 89
    .line 90
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 91
    .line 92
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 93
    .line 94
    iget-object p2, v0, Lpe/hf/black20/LoginActivity;->i0:Landroid/widget/Button;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void

    .line 100
    :pswitch_1
    check-cast v0, Lpe/hf/black20/LoginActivity;

    .line 101
    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    iget-object p1, v0, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .line 112
    iget p2, v0, Lpe/hf/black20/LoginActivity;->f0:I

    .line 113
    .line 114
    mul-int/lit8 p2, p2, 0x32

    .line 115
    .line 116
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    .line 118
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 119
    .line 120
    iget-object p2, v0, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object p1, v0, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    .line 134
    iget p2, v0, Lpe/hf/black20/LoginActivity;->f0:I

    .line 135
    .line 136
    mul-int/lit8 p2, p2, 0x23

    .line 137
    .line 138
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 139
    .line 140
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    .line 142
    iget-object p2, v0, Lpe/hf/black20/LoginActivity;->w0:Landroid/widget/ImageButton;

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
