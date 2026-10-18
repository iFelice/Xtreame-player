.class public final Lb7/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/t1;


# direct methods
.method public synthetic constructor <init>(Lb7/t1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/s1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/s1;->H:Lb7/t1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lb7/s1;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    iget-object v3, p0, Lb7/s1;->H:Lb7/t1;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lb7/t1;->K:Lb7/A1;

    .line 12
    .line 13
    iget-object v0, v0, Lb7/A1;->K0:Landroid/widget/ListView;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, v3, Lb7/t1;->K:Lb7/A1;

    .line 20
    .line 21
    iget-object v0, v0, Lb7/A1;->E0:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lb7/z1;

    .line 27
    .line 28
    iget-object v1, v3, Lb7/t1;->K:Lb7/A1;

    .line 29
    .line 30
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, v1, Lb7/A1;->P0:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lb7/z1;-><init>(Lb7/A1;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lb7/A1;->K0:Landroid/widget/ListView;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    iget-object v0, v3, Lb7/t1;->K:Lb7/A1;

    .line 46
    .line 47
    iget-object v0, v0, Lb7/A1;->K0:Landroid/widget/ListView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    iget-boolean v0, v3, Lb7/t1;->J:Z

    .line 54
    .line 55
    iget-object v3, v3, Lb7/t1;->K:Lb7/A1;

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget-object v0, v3, Lb7/A1;->E0:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, v3, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lb7/v1;

    .line 74
    .line 75
    invoke-virtual {v3}, LY/s;->l()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    iget-object v2, v3, Lb7/A1;->L0:Ljava/util/ArrayList;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-direct {v0, v3, v2, v4}, Lb7/v1;-><init>(Lb7/A1;Ljava/util/ArrayList;I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v3, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v3, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v3, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    new-instance v1, LO1/m;

    .line 97
    .line 98
    const/4 v2, 0x6

    .line 99
    invoke-direct {v1, p0, v2}, LO1/m;-><init>(Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
