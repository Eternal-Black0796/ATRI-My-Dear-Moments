.class Lcom/ies_net/artemis/ArtemisVideoView$3;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/ArtemisVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 377
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$202(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 378
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1202(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    .line 379
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1300(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1300(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView$3;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
