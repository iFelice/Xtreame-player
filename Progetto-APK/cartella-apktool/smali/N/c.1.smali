.class public final LN/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/d;


# instance fields
.field public final G:Landroid/view/ContentInfo$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, LC0/E;->l(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LN/c;->G:Landroid/view/ContentInfo$Builder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/c;->G:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC0/E;->w(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final build()LN/h;
    .locals 3

    .line 1
    new-instance v0, LN/h;

    .line 2
    .line 3
    new-instance v1, Lf/S;

    .line 4
    .line 5
    iget-object v2, p0, LN/c;->G:Landroid/view/ContentInfo$Builder;

    .line 6
    .line 7
    invoke-static {v2}, LC0/E;->m(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Lf/S;-><init>(Landroid/view/ContentInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, LN/h;-><init>(LN/g;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/c;->G:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC0/E;->x(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFlags(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/c;->G:Landroid/view/ContentInfo$Builder;

    .line 2
    .line 3
    invoke-static {v0, p1}, LC0/E;->v(Landroid/view/ContentInfo$Builder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
