.class public Le0/v;
.super Le0/t;
.source "SourceFile"


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "setValue"

    .line 2
    .line 3
    invoke-static {v0}, Le0/t;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Le0/t;->g:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Le0/t;->g:I

    .line 11
    .line 12
    iput-object p1, p0, Le0/t;->e:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Le0/t;->b(Le0/s;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
