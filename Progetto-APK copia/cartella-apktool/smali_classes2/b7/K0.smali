.class public final Lb7/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb7/M0;


# direct methods
.method public synthetic constructor <init>(Lb7/M0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/K0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/K0;->b:Lb7/M0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget p1, p0, Lb7/K0;->a:I

    .line 2
    .line 3
    const v0, 0x7f06002b

    .line 4
    .line 5
    .line 6
    const v1, 0x7f060100

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lb7/K0;->b:Lb7/M0;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p1, v2, Lb7/M0;->P0:Landroid/widget/ImageButton;

    .line 17
    .line 18
    invoke-virtual {v2}, LY/s;->o()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, v2, Lb7/M0;->P0:Landroid/widget/ImageButton;

    .line 35
    .line 36
    invoke-virtual {v2}, LY/s;->o()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_0
    if-nez p2, :cond_1

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    sput-boolean p1, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 56
    .line 57
    iget-object p1, v2, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 58
    .line 59
    const p2, 0x7f080905

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object p1, v2, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 67
    .line 68
    const p2, 0x7f080906

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :pswitch_1
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget-object p1, v2, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 78
    .line 79
    invoke-virtual {v2}, LY/s;->o()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object p1, v2, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 96
    .line 97
    invoke-virtual {v2}, LY/s;->o()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
