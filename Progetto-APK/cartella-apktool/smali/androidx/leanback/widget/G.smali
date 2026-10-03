.class public final Landroidx/leanback/widget/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Landroidx/leanback/widget/H;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/G;->G:Landroidx/leanback/widget/H;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/G;->G:Landroidx/leanback/widget/H;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/H;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/leanback/widget/SearchBar;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Landroidx/leanback/widget/SearchBar;->P:Z

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->H:Landroidx/leanback/widget/SpeechOrbView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
