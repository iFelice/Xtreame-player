.class public abstract Lcom/google/protobuf/d1;
.super Lcom/google/protobuf/b1;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/R1;


# virtual methods
.method public final bridge synthetic c()Lcom/google/protobuf/i1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d1;->i()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/b1;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 10
    .line 11
    sget-object v2, Lcom/google/protobuf/W0;->d:Lcom/google/protobuf/W0;

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 17
    .line 18
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->b()Lcom/google/protobuf/W0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final i()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->isMutable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 12
    .line 13
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 17
    .line 18
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->m()V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Lcom/google/protobuf/b1;->c()Lcom/google/protobuf/i1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 30
    .line 31
    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/protobuf/Q1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d1;->i()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
